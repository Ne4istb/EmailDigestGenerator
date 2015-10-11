library EmailDigestGenerator.mail_generator;

import 'package:EmailDigestGenerator/src/LinkAggregator.dart';

class MailGenerator {

  String _template;
  List<Link> _source;

  MailGenerator(this._template, this._source);

  String generate() {
    var regexString = r'<!-- start repeat -->(.*)<!-- end repeat -->';

    var regex = new RegExp(regexString);
    var matches = regex.allMatches(_template);

    var itemTemplate = matches.first[1];

    var result = "";
    _source.forEach((link) {
      result += itemTemplate
        .replaceAll("{{Url}}", link.url)
        .replaceAll("{{Description}}", link.description)
        .replaceAll("{{Title}}", link.title);
    });

    result = _template.replaceFirst(itemTemplate, result);

    return result;
  }
}