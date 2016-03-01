library email_digest_generator.mail_generator;

class HtmlGenerator {

  String generateIssueHtml(id, title, template, issueTemplate, source) {

    template = template
      .replaceAll("{{IssueId}}", id.toString())
      .replaceFirst("{{IssueTitle}}", title.toString())
      .replaceFirst("{{IssueTemplate}}", issueTemplate);

    var groupTemplate = getTemplate(template, r'<!-- start group repeat -->((.|\n|\r)*)<!-- end group repeat -->');
    if (groupTemplate == null) return template;
    var result = "";
    source.forEach((groupName, links) {

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

    return template.replaceFirst(groupTemplate, result);
  }

  String generateCatalogHtml(template, issueNumbers) {

    var itemTemplate = getTemplate(template, r'<!-- start repeat -->((.|\n|\r)*)<!-- end repeat -->');

    var blocks = issueNumbers.map((number) => itemTemplate.replaceAll("{{IssueNumber}}", number.toString())).join();

    return template.replaceFirst(itemTemplate, blocks);
  }

  getTemplate(String template, regex) {
    var match = new RegExp(regex, multiLine: true).firstMatch(template);
    return (match == null) ? null: match[0];
  }
}