// Copyright (c) 2015, Ne4istb. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

library EmailDigestGenerator.example;

import 'dart:io' show File, Platform;
import 'package:email_digest_generator/email_digest_generator.dart';
import 'dart:async';

String consumerKey;
String accessToken;
String mailUserName;
String mailPassword;
String mongolabUser;
String mongolabPassword;

main() async {

  initPlatformVariables();

  var test = await getDigest(16);
//  var linkAggregator = new LinkAggregator(consumerKey, accessToken);
//  var linksByGroup = await linkAggregator.getLinksByGroup();
  var id = 21;

  await sendEmail(id, test[16]);
//  await saveDigest(id, linksByGroup);
//	linkAggregator.cleanUp(linksByGroup);
}

void initPlatformVariables() {
  Map<String, String> envVars = Platform.environment;

  consumerKey = envVars['DIGEST_POCKET_CONSUMER_KEY'];
  accessToken = envVars['DIGEST_POCKET_ACCESS_CODE'];
  mailUserName = envVars['DIGEST_MAIL_USER_NAME'];
  mailPassword = envVars['DIGEST_MAIL_PASSWORD'];
  mongolabUser = envVars['DIGEST_MONGOLAB_USER'];
  mongolabPassword = envVars['DIGEST_MONGOLAB_PASSWORD'];
}

sendEmail(id, Map<String, List<Link>> linksByGroup) async {
  var recipients = ['anechytailov@sdl.com', 'anechytailov@gmail.com'];
//  var recipients = ['cmt.r&d.tridion.team.ui@sdl.com', 'vantonenko@sdl.com'];

  var title = 'UI Team Weekly Digest #$id';

  var mailTemplate = await readTemplateFromFile('templates${Platform.pathSeparator}mail_template.html');
  var issueTemplate = await readTemplateFromFile('templates${Platform.pathSeparator}issue_template.html');

  var generator = new HtmlGenerator(id, mailTemplate, issueTemplate, linksByGroup);
  var result = generator.generate();

  var mailer = new Mailer(mailUserName, mailPassword);
  await mailer.send(title, result, recipients);
}

Future<String> readTemplateFromFile(String fileName) async {
  return await getFile(fileName).readAsString();
}

File getFile(String fileName) {
  var pathSegments = []
    ..addAll(Platform.script.pathSegments)
    ..removeLast()
    ..add(fileName);

  return new File((Platform.isMacOS ? Platform.pathSeparator : '') + pathSegments.join(Platform.pathSeparator));
}

saveDigest(id, Map<String, List<Link>> linksByGroup) async {
  var repository = new Repository(mongolabUser, mongolabPassword);
  await repository.openConnection();
  await repository.saveDigest(id, linksByGroup);
  await repository.closeConnection();
}

getAllDigests() async {
  var repository = new Repository(mongolabUser, mongolabPassword);
  await repository.openConnection();
  var result = await repository.getAllDigests();
  await repository.closeConnection();
  return result;
}

getDigest(id) async {
  var repository = new Repository(mongolabUser, mongolabPassword);
  await repository.openConnection();
  var result = await repository.getDigest(id);
  await repository.closeConnection();
  return result;
}