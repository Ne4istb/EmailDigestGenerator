library EmailDigestGenerator.link;

import 'package:pocket_client/pocket_client.dart';
import 'dart:convert';

class Link {
  int id;
  String title;
  String description;
  String url;
  List<String> tags;
  String imageUrl;

  Link.fromPocketItem(PocketData data) {
    id = int.parse(data.itemId);
    title = (data.resolvedTitle == null || data.resolvedTitle.isEmpty) ? data.givenTitle : data.resolvedTitle;
    url = data.resolvedUrl ?? data.givenUrl;
    tags = data.tags.map((Tag tag) => tag.tag).toList();
    imageUrl = data.hasImages ? data.images[0].sourceUrl : '';
    description = data.excerpt;
  }

  Link.fromJson(value) {
    Map map = JSON.decode(value);

    id = map['id'];
    title = map['title'];
    description = map['description'];
    url = map['url'];
    imageUrl = map['imageUrl'];
    tags = map['tags'];
  }

  String toJson(){
    return '{'
      '"id": $id,'
      '"title": "$title",'
      '"description": "$description",'
      '"url": "$url",'
      '"tags": ${JSON.encode(tags)},'
      '"imageUrl": "$imageUrl"'
    '}';
  }
}

class Group{
  String name;
  List<Link> links;

  Group(this.name, this.links);
}