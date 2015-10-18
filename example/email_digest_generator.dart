// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

library EmailDigestGenerator.example;

import 'dart:io' show Platform;
import 'package:email_digest_generator/email_digest_generator.dart';

String consumerKey;
String accessToken;
String mailUserName;
String mailPassword;
String mongolabApiKey;

main() async {
  initPlatformVariables();
  
  var linkAggregator = new LinkAggregator(consumerKey, accessToken);

  var linksByGroup = await linkAggregator.getLinksByGroup();

  await sendEmail(linksByGroup);

  var repository = new Repository(mongolabApiKey);
//  await repository.saveDigest(15, linksByGroup);
//  await repository.getDigest(15);
//  await repository.getAllDigests();
//	linkAggregator.cleanUp(linksByGroup);
}

void initPlatformVariables() {
  Map<String, String> envVars = Platform.environment;

  consumerKey = envVars['DIGEST_POCKET_CONSUMER_KEY'];
  accessToken = envVars['DIGEST_POCKET_ACCESS_CODE'];
  mailUserName = envVars['DIGEST_MAIL_USER_NAME'];
  mailPassword = envVars['DIGEST_MAIL_PASSWORD'];
  mongolabApiKey = envVars['DIGEST_MONGOLAB_API_KEY'];
}

sendEmail(Map<String, List<Link>> linksByGroup) async {
  var recipients = ['anechytailov@gmail.com'];
  var title = 'Digest title';

  var template =
  '<h1>$title</h1>'
  '<div>'
  '<!-- start group repeat -->'
  '<h2>{{Group}}:</h2>'
  '<!-- start repeat -->'
  '<div class="section">'
  //	    '<img src={{ImageUrl}} style />'
  '<div>'
  '<a href=\'{{Url}}\'>{{Title}}</a>'
  '<div>{{Description}}</div>'
  '</div>'
  '</div>'
  '<!-- end repeat -->'
  '<!-- end group repeat -->'
  '</div>';

  var generator = new MailGenerator(template, linksByGroup);
  var result = generator.generate();

  var mailer = new Mailer(mailUserName, mailPassword);
  await mailer.send(title, result, recipients);
}