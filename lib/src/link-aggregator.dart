library EmailDigestGenerator.link_aggregator;

import 'package:pocket_client/pocket_client.dart';
import 'package:EmailDigestGenerator/src/link.dart';
import 'dart:async';

class LinkAggregator {

  final _tag = 'digest';

  Client _client;

  LinkAggregator(String consumerKey, String accessToken) {
    _client = new Client(consumerKey, accessToken);
  }

  Future<Map<String, List<Link>>> getLinksByGroup() {

    var options = new RetrieveOptions()
      ..detailType = DetailType.complete
      ..tag = _tag;

    return _client.getData(options: options)
    .then((PocketResponse response) => response.items.values)
    .then(_group)
    .then(_reorder);
  }

  Map<String, List<Link>> _group(items) {

    Map<String, List<Link>> groupedItems = {};

    var links = items.map((item) => new Link.fromPocketItem(item));

    links.forEach((link) {
      var groupName = _getGroupName(link.tags);
      if (groupedItems[groupName] == null) {
        groupedItems[groupName] = new List<Link>();
      }

      groupedItems[groupName].add(link);
    });

    return groupedItems;
  }

  String _getGroupName(List<String> tags) {
    if (tags.contains('video')) return 'Video';
    if (tags.contains('es6')) return 'ES6';
    if (tags.contains('news')) return 'News';
    if (tags.contains('javascript')) return 'JavaScript';
    if (tags.contains('css')) return 'CSS';
    if (tags.contains('.net')) return 'C#';
    if (tags.contains('web')) return 'Web-development';
    return 'Other';
  }

  Map<String, List<Link>> _reorder(Map<String, List<Link>> groupedItems) {

    var result = {};

    _addItem(groupedItems, result, 'JavaScript');
    _addItem(groupedItems, result, 'Web-development');
    _addItem(groupedItems, result, 'ES6');
    _addItem(groupedItems, result, 'CSS');
    _addItem(groupedItems, result, 'C#');
    _addItem(groupedItems, result, 'Other');
    _addItem(groupedItems, result, 'News');
    _addItem(groupedItems, result, 'Video');

    return result;
  }

  _addItem(source, target, itemName){
    if (source[itemName] != null)
      target[itemName] = source[itemName];
  }

  cleanUp(Map<String, List<Link>> links) {

    List<Action> actions = [];

    links.values.forEach((group) {
      group.forEach((link) {
        actions.add(new RemoveTagsAction(link.id, [_tag]));
        actions.add(new ArchiveAction(link.id));
      });
    });

    _client.modify(actions);
  }
}
