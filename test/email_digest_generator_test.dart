library EmailDigestGenerator.test;

import 'package:test/test.dart';
import 'package:email_digest_generator/email_digest_generator.dart';

void main() {
  group('Link aggrregator tests', () {
//		void _assertLink(Link actual, Link expected){
//			expect(actual.title, expected.title);
//			expect(actual.description, expected.description);
//			expect(actual.url, expected.url);
//			expect(actual.tags, expected.tags);
//		}
//
//		test('Should return list', () {
//			var result = LinkAggregator.getLinks();
//			var expected = [
//				new Link('First article', 'The first one', 'http://first', ['Digest','ES6']),
//				new Link('Second article', 'The second one', 'http://second', ['News','Digest']),
//				new Link('Last article', 'The last one', 'http://last', ['JavaScript']),
//				new Link('Another article', 'The anothe one', 'http://other', [])
//			];
//
//			expect(result.length, expected.length);
//
//			for (var i=0; i < result.length; i++){
//				_assertLink(result[i], expected[i]);
//			}
//		});
  });

  group('Mail generator tests', () {
    HtmlGenerator generator;

    test('Should generate email', () {
      var linksByGroup = {
        'JavaScript' : [
          new Link()
            ..title = 'From ASM.JS to WebAssembly'
            ..url = 'https://brendaneich.com/2015/06/from-asm-js-to-webassembly/'
            ..tags = ['javascript'],
          new Link()
            ..title = 'What is WebAssembly?'
            ..description = 'Detailed explanation about WebAssembly and why do we need it'
            ..url = 'https://medium.com/javascript-scene/what-is-webassembly-the-dawn-of-a-new-era-61256ec5a8f6'
            ..tags = ['javascript']
        ],
        'ES6' : [
          new Link()
            ..title = 'Standard ECMA-262'
            ..description = 'If anybody did not hear: ES6 (ES2015) is finally approved! Here is the specification.'
            ..url = 'http://www.ecma-international.org/publications/standards/Ecma-262.htm'
            ..tags = ['es6']
        ]
      };

      var template = '''
      <h1>Digest title</h1>
      <div>
        <!-- start group repeat -->
        <h2>{{Group}}:</h2>
        <!-- start repeat -->
        <div class="section">
          <div style="font-size: 14px; margin-bottom: 10px;">
            <a href=\{{Url}}\>{{Title}}</a>
            <div>{{Description}}</div>
          </div>
        </div>
        <!-- end repeat -->
        <!-- end group repeat -->
      </div>
      ''';

      generator = new HtmlGenerator(template, linksByGroup);
      var result = generator.generateIssueHtml();

      var expected = '''
      <h1>Digest title</h1>
      <div>
        <!-- start group repeat -->
        <h2>JavaScript:</h2>
        <!-- start repeat -->
        <div class="section">
          <div style="font-size: 14px; margin-bottom: 10px;">
            <a href=\https://brendaneich.com/2015/06/from-asm-js-to-webassembly/\>From ASM.JS to WebAssembly</a>
            <div></div>
          </div>
        </div>
        <!-- end repeat --><!-- start repeat -->
        <div class="section">
          <div style="font-size: 14px; margin-bottom: 10px;">
            <a href=\https://medium.com/javascript-scene/what-is-webassembly-the-dawn-of-a-new-era-61256ec5a8f6\>What is WebAssembly?</a>
            <div>Detailed explanation about WebAssembly and why do we need it</div>
          </div>
        </div>
        <!-- end repeat -->
        <!-- end group repeat --><!-- start group repeat -->
        <h2>ES6:</h2>
        <!-- start repeat -->
        <div class="section">
          <div style="font-size: 14px; margin-bottom: 10px;">
            <a href=\http://www.ecma-international.org/publications/standards/Ecma-262.htm\>Standard ECMA-262</a>
            <div>If anybody did not hear: ES6 (ES2015) is finally approved! Here is the specification.</div>
          </div>
        </div>
        <!-- end repeat -->
        <!-- end group repeat -->
      </div>
      ''';

      expect(result, expected);
    });
  });

//	group('Mailer tests', ()
//	{
//		test('Should generate email', () {
//			var mailer = new Mailer();
//			mailer.send();
//		});
//	});
}
