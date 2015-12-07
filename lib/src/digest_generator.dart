// Copyright (c) 2015, Ne4istb. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

library email_digest_generator.digest_generator;

import 'dart:io' show File, Platform;
import 'package:email_digest_generator/email_digest_generator.dart';
import 'dart:async';

class DigestGenerator {

  String _mongolabUser;
  String _mongolabPassword;
  String consumerKey;
  String accessToken;
  String _mailUserName;
  String _mailPassword;

  DigestGenerator() {
    Map<String, String> envVars = Platform.environment;

    _mongolabUser = envVars['DIGEST_MONGOLAB_USER'];
    _mongolabPassword = envVars['DIGEST_MONGOLAB_PASSWORD'];
    consumerKey = envVars['DIGEST_POCKET_CONSUMER_KEY'];
    accessToken = envVars['DIGEST_POCKET_ACCESS_CODE'];
    _mailUserName = envVars['DIGEST_MAIL_USER_NAME'];
    _mailPassword = envVars['DIGEST_MAIL_PASSWORD'];
  }

  generateHtml(templatePath, id, title, Map<String, List<Link>> linksByGroup) async {

    var issueTemplate = _readFile('templates/issue_template.html');
    var template = _readFile(templatePath);

    var generator = new HtmlGenerator();
    return generator.generateIssueHtml(id, title, await template, await issueTemplate, linksByGroup);
  }

  generateCatalog(templatePath, issueNumbers) async {
    var template = _readFile(templatePath);
    var generator = new HtmlGenerator();
    return generator.generateCatalogHtml(await template, issueNumbers);
  }

  sendEmail(id, Map<String, List<Link>> linksByGroup) async {
//    var recipients = ['anechytailov@sdl.com', 'anechytailov@gmail.com'];
    var recipients = ['cmt.r&d.tridion.team.ui@sdl.com', 'vantonenko@sdl.com'];

    var title = 'UI Team Weekly Digest #$id';

    var mail_template = 'templates/mail_template.html';
    var result = await generateHtml(mail_template, id, title, linksByGroup);

    var mailer = new Mailer(_mailUserName, _mailPassword);
    await mailer.send(title, result, recipients);
  }

  Future<String> _readFile(String fileName) {
    var path = Platform.script.resolve(fileName).toFilePath();
    return new File(path).readAsString();
  }

  saveDigest(id, Map<String, List<Link>> linksByGroup) async {
    var repository = new Repository(_mongolabUser, _mongolabPassword);
    await repository.openConnection();
    await repository.saveDigest(id, linksByGroup);
    await repository.closeConnection();
  }

  getAllDigests() async {
    var repository = new Repository(_mongolabUser, _mongolabPassword);
    await repository.openConnection();
    var result = await repository.getAllDigests();
    await repository.closeConnection();
    return result;
  }

  getIssueNumbers() async {
    var repository = new Repository(_mongolabUser, _mongolabPassword);
    await repository.openConnection();
    var result = await repository.getIssueNumbers();
    await repository.closeConnection();
    return result;
  }

  getDigest(id) async {
    var repository = new Repository(_mongolabUser, _mongolabPassword);
    await repository.openConnection();
    var result = await repository.getDigest(id);
    await repository.closeConnection();
    return result;
  }

  deleteDigest(id) async {
    var repository = new Repository(_mongolabUser, _mongolabPassword);
    await repository.openConnection();
    await repository.deleteDigest(id);
    await repository.closeConnection();
  }
}