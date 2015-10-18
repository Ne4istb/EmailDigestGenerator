library email_digest_generator.mail_generator;

import 'package:email_digest_generator/src/link.dart';

class MailGenerator {

  String _template;
  Map<String, List<Link>> _source;

  MailGenerator(this._template, this._source);

  String generate() {
    var groupTemplate = getTemplate(_template, r'<!-- start group repeat -->(.*)<!-- end group repeat -->');

    var result = "";
    _source.forEach((groupName, links) {
      var groupHtml = groupTemplate.replaceAll("{{Group}}", groupName);

      var itemTemplate = getTemplate(groupHtml, r'<!-- start repeat -->(.*)<!-- end repeat -->');

      var blocks = '';
      links.forEach((link) {
        blocks += itemTemplate
        .replaceAll("{{Url}}", link.url)
        .replaceAll("{{Description}}", link.description)
        .replaceAll("{{Title}}", link.title)
        .replaceAll("{{ImageUrl}}", link.imageUrl);
      });

      result += groupHtml.replaceFirst(itemTemplate, blocks);
    });

    result = _template.replaceFirst(groupTemplate, result);

    return result;
  }

  getTemplate(template, regex) {
    var regexItem = new RegExp(regex);
    var matches = regexItem.allMatches(template);

    var itemTemplate = matches.first[1];

    return itemTemplate;
  }
}