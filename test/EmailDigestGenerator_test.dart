// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

library EmailDigestGenerator.test;

import 'package:EmailDigestGenerator/EmailDigestGenerator.dart';
import 'package:test/test.dart';
import 'package:EmailDigestGenerator/src/MailGenerator.dart';

void main() {
	group('Link aggrregator tests', () {
		LinkAggregator aggregator;

		setUp(() {
			aggregator = new LinkAggregator();
		});

		void _assertLink(Link actual, Link expected){
			expect(actual.title, expected.title);
			expect(actual.description, expected.description);
			expect(actual.url, expected.url);
			expect(actual.tags, expected.tags);
		}

		test('Should return list', () {
			var result = aggregator.getLinks();
			var expected = [
				new Link('First article', 'The first one', 'http://first', ['Digest','ES6']),
				new Link('Second article', 'The second one', 'http://second', ['News','Digest']),
				new Link('Last article', 'The last one', 'http://last', ['JavaScript']),
				new Link('Another article', 'The anothe one', 'http://other', [])
			];

			expect(result.length, expected.length);

			for (var i=0; i < result.length; i++){
				_assertLink(result[i], expected[i]);
			}
		});
	});

	group('Mail generator tests', () {
		MailGenerator generator;

		setUp(() {
		});

		test('Should generate email', () {

			var links = [
				new Link('First article', 'The first one', 'http://first', ['Digest','ES6']),
				new Link('Second article', 'The second one', 'http://second', ['News','Digest']),
				new Link('Last article', 'The last one', 'http://last', ['JavaScript']),
				new Link('Another article', 'The anothe one', 'http://other', [])
			];

			var template =
				'<h1>Digest title</h1>' +
				'<li>' +
					'<!-- start repeat -->' +
						'<ul><a href=\'{{Url}}\'>{{Url}}</a> - <b>{{Title}}</b>:{{Description}}</ul>' +
					'<!-- end repeat -->' +
				'</li>';

			generator = new MailGenerator(template, links);
			var result = generator.generate();

			var expected =
				'<h1>Digest title</h1>' +
				'<li>' +
					'<!-- start repeat -->' +
						'<ul><a href=\'http://first\'>http://first</a> - <b>First article</b>:The first one</ul>'
						'<ul><a href=\'http://second\'>http://second</a> - <b>Second article</b>:The second one</ul>'
						'<ul><a href=\'http://last\'>http://last</a> - <b>Last article</b>:The last one</ul>'
						'<ul><a href=\'http://other\'>http://other</a> - <b>Another article</b>:The anothe one</ul>'
					'<!-- end repeat -->' +
				'</li>';

			expect(result, expected);
		});
	});
}
