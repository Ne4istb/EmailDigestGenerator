library email_digest_generator.mail_generator;

import 'package:email_digest_generator/src/link.dart';

class HtmlGenerator {

  int _id;
  String _title;
  String _template;
  String _issueTemplate;
  Map<String, List<Link>> _source;

  HtmlGenerator(this._id, this._title, this._template, this._issueTemplate, this._source);

  String generate() {

    _template = _template
      .replaceAll("{{IssueId}}", _id.toString())
      .replaceFirst("{{IssueTitle}}", _title.toString())
      .replaceFirst("{{IssueTemplate}}", _issueTemplate);

    var groupTemplate = getTemplate(_template, r'<!-- start group repeat -->((.|\n|\r)*)<!-- end group repeat -->');
    if (groupTemplate == null) return _template;
    var result = "";
    _source.forEach((groupName, links) {

      var groupHtml = groupTemplate.replaceAll("{{Group}}", groupName);

      var itemTemplate = getTemplate(groupHtml, r'<!-- start repeat -->((.|\n|\r)*)<!-- end repeat -->');

      var blocks = links.map((link) => itemTemplate
        .replaceAll("{{Url}}", link.url)
        .replaceAll("{{Description}}", link.description)
        .replaceAll("{{Title}}", link.title)
        .replaceAll("{{ImageUrl}}", link.imageUrl))
      .join();

      result += groupHtml.replaceFirst(itemTemplate, blocks);
    });

    return _template.replaceFirst(groupTemplate, result);
  }

  getTemplate(String template, regex) {
    var match = new RegExp(regex, multiLine: true).firstMatch(template);
    return (match == null) ? null: match[0];
  }
}