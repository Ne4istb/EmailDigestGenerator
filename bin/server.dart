import 'package:redstone/redstone.dart' as app;
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
    final pageTemplate = 'templates/page_template.html';
    return _digestGenerator.generateHtml(pageTemplate, id, title, issue[id]);
  }

  @app.Route("/", methods: const [app.GET], responseType: "text/html")
  getCatalog() async {

    var issueNumbers = await _digestGenerator.getIssueNumbers();
    final catalogTemplate = 'templates/catalog_template.html';
    return _digestGenerator.generateCatalog(catalogTemplate, issueNumbers);
  }

  @app.Route("/migrate", methods: const [app.GET])
  migrate() async {

//    for (var i=101; i<=120; i++){
//      await _digestGenerator.deleteDigest(i);
//    }
//
    return await _digestGenerator.getLatestDigestId();
  }

  @app.Route("/send_email/:key/:id", methods: const [app.GET])
  send(String key, id) async {

    if (key != _digestGenerator.consumerKey){
      return "Not allowed!";
    }

    var weekday = new DateTime.now().weekday;
    if (weekday != DateTime.WEDNESDAY){
      return "Wrong day!";
    }

    if (id == 'latest'){
      id = await _digestGenerator.getLatestDigestId() + 1;
    }

    var linkAggregator = new LinkAggregator(_digestGenerator.consumerKey, _digestGenerator.accessToken);
    var linksByGroup = await linkAggregator.getLinksByGroup();

    await _digestGenerator.sendEmail(id, linksByGroup);
//    await _digestGenerator.saveDigest(id, linksByGroup);
//	  linkAggregator.cleanUp(linksByGroup);

    return 'Sent!';
  }
}

@app.ErrorHandler(HttpStatus.NOT_FOUND)
@app.ErrorHandler(HttpStatus.BAD_REQUEST)
handleNotFoundError() => app.redirect("/");

main() {
  app.setupConsoleLog();

  var portEnv = Platform.environment['PORT'];
  var port = portEnv == null ? 9999 : int.parse(portEnv);

  String localFile(path) => Platform.script.resolve(path).toFilePath();

  SecurityContext serverContext = new SecurityContext()
    ..useCertificateChain(localFile('certificates/trusted_cert.pem'))
    ..usePrivateKey(localFile('certificates/server_key.pem'), password: Platform.environment['DIGEST_CERTIFICATE_PASSWORD']);

  app.start(port: port);

}
