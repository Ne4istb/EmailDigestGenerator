import 'package:redstone/server.dart' as app;
import 'dart:io';

import 'package:email_digest_generator/email_digest_generator.dart';

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
    final catalogTemplate = 'templates${Platform.pathSeparator}catalog_template.html';
    return _digestGenerator.generateCatalog(catalogTemplate, issueNumbers);
  }

  @app.Route("/migrate", methods: const [app.GET])
  migrate() async {

//    for (var i=101; i<=120; i++){
//      await _digestGenerator.deleteDigest(i);
//    }
//
    return "OK";
  }
}

@app.ErrorHandler(HttpStatus.NOT_FOUND)
@app.ErrorHandler(HttpStatus.BAD_REQUEST)
handleNotFoundError() => app.redirect("/");

main() {
  app.setupConsoleLog();

  var portEnv = Platform.environment['PORT'];
  var port = portEnv == null ? 9999 : int.parse(portEnv);
  app.start(address: InternetAddress.ANY_IP_V4, port: port);
}
