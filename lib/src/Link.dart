library EmailDigestGenerator.link;

import 'package:pocket_client/pocket_client.dart';

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
}
