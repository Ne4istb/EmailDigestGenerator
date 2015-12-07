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

  var linkAggregator = new LinkAggregator(_consumerKey, _accessToken);
  var linksByGroup = await linkAggregator.getLinksByGroup();
  var id = 24;

  await sendEmail(id, linksByGroup);
//  await _digestGenerator.saveDigest(id, linksByGroup);
//	linkAggregator.cleanUp(linksByGroup);
}

initEnvironmentVariables(){
  Map<String, String> envVars = Platform.environment;

  _consumerKey = envVars['DIGEST_POCKET_CONSUMER_KEY'];
  _accessToken = envVars['DIGEST_POCKET_ACCESS_CODE'];
  _mailUserName = envVars['DIGEST_MAIL_USER_NAME'];
  _mailPassword = envVars['DIGEST_MAIL_PASSWORD'];
}

