import 'package:redstone/server.dart' as app;
import 'package:shelf/shelf.dart' as shelf;
import 'dart:io' show HttpStatus;

import 'dart:io' show File, Platform;
import 'digest_generator.dart';

@app.Group("/")
class DigestService {

  DigestGenerator _digestGenerator = new DigestGenerator();


  @app.Route("issues/:id", methods: const [app.GET], responseType: "text/html")
  get(int id) async {
    var issue = await _digestGenerator.getDigest(id);

    if (issue == null)
      return new app.ErrorResponse(HttpStatus.NOT_FOUND, "Issue is not found");

    var title = 'UI Team Weekly Digest #$id';
    final pageTemplate = 'templates${Platform.pathSeparator}page_template.html';
    return _digestGenerator.generateHtml(pageTemplate, id, title, issue[id]);
  }

  @app.Route("/", methods: const [app.GET], responseType: "text/html")
  getCatalog() async {

    var issueNumbers = await _digestGenerator.getIssueNumbers();
    final cataloTemplate = 'templates${Platform.pathSeparator}catalog_template.html';
    return _digestGenerator.generateCatalog(cataloTemplate, issueNumbers);
  }
}

@app.ErrorHandler(HttpStatus.NOT_FOUND)
@app.ErrorHandler(HttpStatus.BAD_REQUEST)
handleNotFoundError() => app.redirect("/");

main() {
  app.start();
}