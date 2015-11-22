// Copyright (c) 2015, Ne4istb. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

library EmailDigestGenerator.digest_generator;

import 'dart:io' show File, Platform;
import 'package:email_digest_generator/email_digest_generator.dart';
import 'dart:async';

class DigestGenerator {

  String _mongolabUser;
  String _mongolabPassword;

  DigestGenerator() {
    _mongolabUser = Platform.environment['DIGEST_MONGOLAB_USER'];
    _mongolabPassword = Platform.environment['DIGEST_MONGOLAB_PASSWORD'];
  }

  generateHtml(templatePath, id, title, Map<String, List<Link>> linksByGroup) async {

    var issueTemplate = _readFile('templates${Platform.pathSeparator}issue_template.html');
    var template = _readFile(templatePath);

    var generator = new HtmlGenerator();
    return generator.generateIssueHtml(id, title, await template, await issueTemplate, linksByGroup);
  }

  generateCatalog(templatePath, issueNumbers) async {
    var template = _readFile(templatePath);
    var generator = new HtmlGenerator();
    return generator.generateCatalogHtml(await template, issueNumbers);
  }

  Future<String> _readFile(String fileName) {

    var pathSegments = []
      ..addAll(Platform.script.pathSegments)
      ..removeLast()
      ..add(fileName);

    var path = (Platform.isMacOS ? Platform.pathSeparator : '') + pathSegments.join(Platform.pathSeparator);

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
}