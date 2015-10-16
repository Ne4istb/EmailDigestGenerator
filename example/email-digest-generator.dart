// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

library EmailDigestGenerator.example;

import 'package:EmailDigestGenerator/email-digest-generator.dart';

const consumerKey = '<consumer_key>';
const accessToken = '<access_code>';

main() async{

	var linkAggregator = new LinkAggregator(consumerKey, accessToken);

	var linksByGroup = await linkAggregator.getLinksByGroup();

	await sendEmail(linksByGroup);

//	linkAggregator.cleanUp(linksByGroup);
}

sendEmail(Map<String, List<Link>> linksByGroup) {
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

	var mailer = new Mailer();
	mailer.send(title, result, recipients);
}