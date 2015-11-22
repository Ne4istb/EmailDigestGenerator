import 'package:redstone/server.dart' as app;
import 'package:shelf/shelf.dart' as shelf;
import 'dart:io' show HttpStatus;

import 'dart:io' show File, Platform;
import 'digest_generator.dart';

@app.Group("/")
class DigestService {

  DigestGenerator _digestGenerator = new DigestGenerator();
  String pageTemplate = 'templates${Platform.pathSeparator}page_template.html';

  @app.Route("issues/:id", methods: const [app.GET], responseType: "text/html")
  get(int id) async {
    var issue = await _digestGenerator.getDigest(id);

    if (issue == null)
      return new app.ErrorResponse(HttpStatus.NOT_FOUND, "Issue is not found");

    var title = 'UI Team Weekly Digest #$id';
    return _digestGenerator.generateHtml(pageTemplate, id, title, issue[id]);
  }

  @app.Route("/", methods: const [app.GET])
  getCatalog() {
    return new shelf.Response.ok("Catalog to be here...");
  }
}

@app.ErrorHandler(HttpStatus.NOT_FOUND)
@app.ErrorHandler(HttpStatus.BAD_REQUEST)
handleNotFoundError() => app.redirect("/");

main() {
  app.start();
}