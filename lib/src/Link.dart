library email_digest_generator.link;

import 'package:pocket_client/pocket_client.dart';
import 'dart:convert';

class Link {

  int id = 0;
  String title = '';
  String description = '';
  String url = '';
  List<String> tags = [];
  String imageUrl = '';

  Link();

  Link.fromPocketItem(PocketData data) {
    id = int.parse(data.itemId);
    url = data.resolvedUrl ?? data.givenUrl;
    title = new HtmlEscape().convert((data.resolvedTitle == null || data.resolvedTitle.isEmpty) ? data.givenTitle :
    data.resolvedTitle);
    title = title.isEmpty ? url : title;
    tags = data.tags.map((Tag tag) => tag.tag).toList();
    imageUrl = data.hasImages ? data.images[0].sourceUrl : '';
    description = new HtmlEscape().convert(data.excerpt);
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
    return JSON.encode(toMap);
  }

  get toMap => {
    'id': id,
    'title': title,
    'description': description,
    'url': url,
    'tags': tags,
    'imageUrl': imageUrl
  };
}