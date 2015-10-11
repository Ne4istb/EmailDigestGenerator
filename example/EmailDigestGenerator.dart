// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library EmailDigestGenerator.example;

import 'package:EmailDigestGenerator/EmailDigestGenerator.dart';

main() {
  var recipients = ['anechytailov@gmail.com'];

  var links = LinkAggregator.getLinks();

  var template =
  '<h1>Digest title</h1>' +
  '<ul' +
  '<!-- start repeat -->' +
  '<li><a href=\'{{Url}}\'>{{Url}}</a> - <b>{{Title}}</b>:{{Description}}</li>' +
  '<!-- end repeat -->' +
  '</ul>';

  var generator = new MailGenerator(template, links);
  var result = generator.generate();

  var mailer = new Mailer();

  mailer.send("test", result, recipients);
}
