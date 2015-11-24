library EmailDigestGenerator.example;

import 'dart:io' show File, Platform;
import 'package:email_digest_generator/email_digest_generator.dart';

DigestGenerator _digestGenerator = new DigestGenerator();

String _consumerKey;
String _accessToken;
String _mailUserName;
String _mailPassword;

main() async {

  initEnvironmentVariables();

  var test = await _digestGenerator.getDigest(16);
//  var linkAggregator = new LinkAggregator(consumerKey, accessToken);
//  var linksByGroup = await linkAggregator.getLinksByGroup();
  var id = 21;

  await sendEmail(id, test[16]);
//  await saveDigest(id, linksByGroup);
//	linkAggregator.cleanUp(linksByGroup);
}

initEnvironmentVariables(){
  Map<String, String> envVars = Platform.environment;

  _consumerKey = envVars['DIGEST_POCKET_CONSUMER_KEY'];
  _accessToken = envVars['DIGEST_POCKET_ACCESS_CODE'];
  _mailUserName = envVars['DIGEST_MAIL_USER_NAME'];
  _mailPassword = envVars['DIGEST_MAIL_PASSWORD'];
}

sendEmail(id, Map<String, List<Link>> linksByGroup) async {

  var recipients = ['anechytailov@sdl.com', 'anechytailov@gmail.com'];
//  var recipients = ['cmt.r&d.tridion.team.ui@sdl.com', 'vantonenko@sdl.com'];

  var title = 'UI Team Weekly Digest #$id';

  var mail_template = 'templates${Platform.pathSeparator}mail_template.html';
  var result = await _digestGenerator.generateHtml(mail_template, id, title, linksByGroup);

  var mailer = new Mailer(_mailUserName, _mailPassword);
  await mailer.send(title, result, recipients);
}