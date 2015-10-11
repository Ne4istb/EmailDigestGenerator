// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

library EmailDigestGenerator.example;

import 'package:EmailDigestGenerator/EmailDigestGenerator.dart';
import 'package:pocket_client/pocket_client.dart';


const consumerKey = '<consumer_key>';
const accessToken = '<access_token>';

main() {
	var client = new Client(consumerKey, accessToken);

	var options = new RetrieveOptions()
		..detailType = DetailType.complete
		..tag = 'digest';

	client.getData(options: options).then(onDataReceived);
}

onDataReceived(PocketResponse response) {
	Map<String, List<Link>> links = getLinks(response.items.values);

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

	var generator = new MailGenerator(template, links);
	var result = generator.generate();

	var mailer = new Mailer();

	mailer.send(title, result, recipients);
}

Map<String, List<Link>> getLinks(items) {

	Map<String, List<Link>> groupedItems ={};

	var links = items.map(toLink);

	links.forEach((link) {
		var groupName = getGroupName(link.tags);
		if (groupedItems[groupName] == null) {
			groupedItems[groupName] = new List<Link>();
		}

		groupedItems[groupName].add(link);
	});

	return reorder(groupedItems);
}

Map<String, List<Link>> reorder(Map<String, List<Link>> groupedItems) {

	var result = {};

	if (groupedItems['JavaScript'] != null)
		result['JavaScript'] = groupedItems['JavaScript'];

	if (groupedItems['Web-development'] != null)
		result['Web-development'] = groupedItems['Web-development'];

	if (groupedItems['ES6'] != null)
		result['ES6'] = groupedItems['ES6'];

	if (groupedItems['CSS'] != null)
		result['CSS'] = groupedItems['CSS'];

	if (groupedItems['C#'] != null)
		result['C#'] = groupedItems['C#'];

	if (groupedItems['News'] != null)
		result['News'] = groupedItems['News'];

	if (groupedItems['Other'] != null)
		result['Other'] = groupedItems['Other'];

	return result;
}

Link toLink(PocketData item) {
	var title = (item.resolvedTitle == null || item.resolvedTitle.isEmpty) ? item.givenTitle : item.resolvedTitle;
	var url = item.resolvedUrl ?? item.givenUrl;
	var tags = item.tags.map((Tag tag) => tag.tag).toList();
	var imageUrl = item.hasImages ? item.images[0].sourceUrl : '';

	return new Link(title, item.excerpt, url, tags, imageUrl: imageUrl);
}

String getGroupName(List<String> tags){
	if (tags.contains('es6')) return 'ES6';
	if (tags.contains('news')) return 'News';
	if (tags.contains('javascript')) return 'JavaScript';
	if (tags.contains('css')) return 'CSS';
	if (tags.contains('.net')) return 'C#';
	if (tags.contains('web')) return 'Web-development';
	return 'Other';
}