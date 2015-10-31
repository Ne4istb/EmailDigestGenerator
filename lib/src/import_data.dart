library email_digest_generator.import_data;

import '../email_digest_generator.dart';

class Import{

  static get digest1 => {
    'JavaScript' : [
      new Link()
        ..title = 'JavaScript: The Extra Good Parts'
        ..description = 'JavaScript: The Extra Good Parts. Some JS features we should use!'
        ..url = 'http://engineering.wix.com/2015/04/21/javascript-the-extra-good-parts'
        ..tags = ['javascript'],
      new Link()
        ..title = '5 JS features should know and understand if you want to be a good JS developer'
        ..url = 'https://medium.com/humans-create-software/how-do-you-judge-a-javascript-programmer-by-only-5-questions-f2abdf7dfd4a'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Why You Need a JavaScript Project Checklist'
        ..description = 'Why You Need a JavaScript Project Checklist (read all 3 articles in the series)'
        ..url = 'http://blog.bitovi.com/why-checklist'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Why does a results vary based on curly brace placement?'
        ..description = '[Melvin] should we place curly braces on new line?'
        ..url = 'http://stackoverflow.com/questions/3641519/why-does-a-results-vary-based-on-curly-brace-placement'
        ..tags = ['javascript']
    ],
    'Web-development' : [
      new Link()
        ..title = 'Podcast on Web optimizations'
        ..url = 'http://pathtoperf.com/'
        ..tags = ['web'],
      new Link()
        ..title = '8 ways to be the perfect web developer'
        ..url = 'http://www.developerdrive.com/2015/04/8-ways-to-be-the-perfect-web-developer/'
        ..tags = ['web']
    ],
    'ES6' : [
      new Link()
        ..title = 'ES6 In Depth Articles'
        ..description = 'A series of articles on ES6 features. Articles are added weekly, so do not forget to refresh'
        ' the list'
        ..url = 'https://hacks.mozilla.org/category/es6-in-depth'
        ..tags = ['es6']
    ],
    'Video' : [
      new Link()
        ..title = 'JavaScript Loop Optimization'
        ..url = 'http://code.tutsplus.com/tutorials/javascript-loop-optimization--cms-23997'
        ..tags = ['javascript', 'video'],
      new Link()
        ..title = 'Videos from Fluent 2015 focused on web performance'
        ..url = 'http://wijmo.com/fluent-2015-focused-on-performance'
        ..tags = ['video']
    ],
    'Other' : [
      new Link()
        ..title = 'git-game'
        ..description = 'A terminal game to check your git skills, nice for learning as well.'
        ..url = 'https://github.com/hgarc014/git-game'
        ..tags = ['git'],
      new Link()
        ..title = 'First aid git'
        ..description = 'Searchable collection of the most frequently asked Git questions(was sent early, but keep it here just in case)'
        ..url = 'http://firstaidgit.io/#/'
        ..tags = ['git'],
      new Link()
        ..title = 'regexOne'
        ..description = 'A resource to learn regular expressions with simple, interactive examples'
        ..url = 'http://regexone.com/'
        ..tags = ['other']
    ]
  };

  static get digest2 => {
    'JavaScript' : [
      new Link()
        ..title = 'True Hash Maps in JavaScript'
        ..description = 'How to implement true hash maps (aka dictionary) in JS'
        ..url = 'http://ryanmorr.com/true-hash-maps-in-javascript'
        ..tags = ['javascript'],
      new Link()
        ..title = 'An Introduction to Functional JavaScript'
        ..url = 'http://www.sitepoint.com/introduction-functional-javascript'
        ..tags = ['javascript'],
      new Link()
        ..title = 'for vs forEach vs while'
        ..description = 'In previous digest there was video about “Loop optimizations”, there were not very good '
        'examples(( Here is resource with better tests where you can run tests yourself. Also you can edit and add new tests.'
        ..url = 'http://jsperf.com/for-vs-foreach/66'
        ..tags = ['javascript']
    ],
    'Web-development' : [
      new Link()
        ..title = 'HTTP/2 is here, let\'s optimize!'
        ..description = 'Nice slides from Ilya Grigorik’s presentation about optimizing HTTP/2 (read as be ready to use)'
        ..url = 'https://docs.google.com/presentation/d/1r7QXGYOLCh4fcUq0jDdDwKJWNqWK1o4xMtYpKZCJYjM/'
        ..tags = ['web']
    ],
    'CSS' : [
      new Link()
        ..title = 'On writing real CSS (again)'
        ..description = 'Article about moving from CSS pre-processors to CSS post-processors.'
        ..url = 'https://blog.colepeters.com/on-writing-real-css-again/'
        ..tags = ['css']
    ],
    'ES6' : [
      new Link()
        ..title = 'ES6 In Depth: Rest parameters and defaults'
        ..description = 'new article in “ES6 In Depth” series: Rest parameters and defaults'
        ..url = 'https://hacks.mozilla.org/2015/05/es6-in-depth-rest-parameters-and-defaults'
        ..tags = ['es6'],
      new Link()
        ..title = 'ES6 в деталях: Генераторы'
        ..description = 'Russian translation of “ES6 In Depth: Generators”'
        ..url = 'http://frontender.info/es6-in-depth-generators/'
        ..tags = ['es6'],
      new Link()
        ..title = 'Choose ES6 modules Today!'
        ..description = 'An opinion about moving from ES5 package managers and dependencies managers (like npm, '
        'Browserify, require.js etc.) to ES6 package control system JSPM.io. For me webpack with babel-loader works well for this purposes=)'
        ..url = 'http://developer.telerik.com/featured/choose-es6-modules-today/'
        ..tags = ['es6']
    ],
    'Video' : [
      new Link()
        ..title = 'MoscowJS 21'
        ..description = 'videos from MoscowJS conf are available[ru]'
        ..url = 'https://www.youtube.com/playlist?list=PL95OM-7UObpHJ4er3BF4x3M7XfQ5Yvivg'
        ..tags = ['javascript', 'video'],
      new Link()
        ..title = 'JavaScript Frameworks day'
        ..description = 'videos from JavaScript Frameworks day are available[ru]'
        ..url = 'http://frameworksdays.com/event/js-frameworks-day-2015/page/program'
        ..tags = ['video'],
      new Link()
        ..title = 'HTTP 203'
        ..description = 'web developers sitcom “HTTP 203”. Guys discusses different questions on web development'
        ..url = 'https://www.youtube.com/playlist?list=PLOU2XLYxmsII_38oWcnQzXs9K9HKBMg-e'
        ..tags = ['video']
    ],
  };

  static get digest3 => {
    'JavaScript' : [
      new Link()
        ..title = 'Common Misconceptions About Inheritance in JavaScript'
        ..url = 'https://medium.com/javascript-scene/common-misconceptions-about-inheritance-in-javascript-d5d9bab29b0a'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Power Surge – optimize the JavaScript in this HTML5 game using Firefox Developer Edition'
        ..description = 'An interactive game which learns to optimize the JavaScript'
        ..url = 'https://hacks.mozilla.org/2015/06/power-surge-optimize-the-javascript-in-this-html5-game-using-firefox-developer-edition/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'shows about Web Fundamentals on the Google Developers channel'
        ..url = 'https://developers.google.com/web/shows/'
        ..tags = ['video'],

    ],
    'Other' : [
      new Link()
        ..title = 'Why You Must Tame Complexity to Become a Better Programmer'
        ..description = 'Some thought about reducing complexity and simplifying code.'
        ..url = 'http://aestheticio.com/become-a-better-programmer-tame-complexity/',
      new Link()
        ..title = 'How to Become a Better Programmer by Learning How You Understand Code'
        ..url = 'http://aestheticio.com/become-better-programmer-learning-understand-code/'
    ],
    'Web-development' : [
      new Link()
        ..title = 'Architecting Websites For The HTTP/2 Era'
        ..description = 'Be ready for moving to HTTP/2, some basic fundamentals..'
        ..url = 'https://ma.ttias.be/architecting-websites-http2-era'
        ..tags = ['web']
    ],
    'ES6' : [
      new Link()
        ..title = 'Introduction to ES6 Promises'
        ..url = 'http://jamesknelson.com/grokking-es6-promises-the-four-functions-you-need-to-avoid-callback-hell/'
        ..tags = ['es6'],
      new Link()
        ..title = 'We have a problem with promises'
        ..description = 'Some common mistakes developers do working with promises'
        ..url = 'http://pouchdb.com/2015/05/18/we-have-a-problem-with-promises.html'
        ..tags = ['es6'],
      new Link()
        ..title = 'ES6 In Depth: Destructuring'
        ..url = 'https://hacks.mozilla.org/2015/05/es6-in-depth-destructuring/'
        ..tags = ['es6'],
      new Link()
        ..title = 'Understanding ECMAScript 6'
        ..description = 'Online book on ES6; book is in progress yet, but a lot of useful info is already there'
        ..url = 'https://leanpub.com/understandinges6/read'
        ..tags = ['es6']
    ],
    'Video' : [
      new Link()
        ..title = 'JavaScript Code Smells'
        ..url = 'http://elijahmanor.com/javascript-smells/'
        ..tags = ['javascript', 'video'],
      new Link()
        ..title = 'Supercharging page load (100 Days of Google Dev)'
        ..description = 'Nice video about page load optimization'
        ..url = 'https://www.youtube.com/watch?feature=youtu.be&v=d5_6yHixpsQ&app=desktop'
        ..tags = ['javascript', 'video'],
      new Link()
        ..title = 'shows about Web Fundamentals on the Google Developers channel'
        ..url = 'https://developers.google.com/web/shows/'
        ..tags = ['video'],
      new Link()
        ..title = 'Web Rebels conference'
        ..description = 'videos from Web Rebels conference'
        ..url = 'http://webrebels.23video.com/'
        ..tags = ['video'],
      new Link()
        ..title = 'Advancing JavaScript without breaking the web'
        ..description = 'video how to use new features without breaking compatibility with old browsers.'
        ..url = 'https://channel9.msdn.com/Events/WebPlatformSummit/2015/Advancing-JavaScript-without-breaking-the-web'
        ..tags = ['video']
    ]
  };

  static get digest4 => {
    'JavaScript' : [
      new Link()
        ..title = 'Optimizing your JavaScript with Functional Programming'
        ..description = 'Optimizing JavaScript using Lazy Evaluation and Memoization.'
        ..url = 'http://java.dzone.com/articles/optimizing-your-javascript'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Writing a Non-blocking JavaScript Quicksort'
        ..description = 'An example how algorithm improvement can improve performance'
        ..url = 'http://www.breck-mckye.com/blog/2015/06/writing-a-non-blocking-javascript-quicksort/'
        ..tags = ['javascript'],
      new Link()
        ..title = '7 essential JavaScript functions'
        ..url = 'http://davidwalsh.name/essential-javascript-functions'
        ..tags = ['javascript']
    ],
    'Web-development' : [
      new Link()
        ..title = 'How to Become a Great JavaScript Developer'
        ..url = 'http://blog.ustunozgur.com/javascript/programming/books/videos/2015/06/17/how_to_be_a_great_javascript_software_developer.html'
        ..tags = ['web'],
      new Link()
        ..title = 'HTML5 Overview'
        ..description = 'Nice HTML5 overview with references to specification'
        ..url = 'https://github.com/dret/HTML5-overview/blob/master/README.md'
        ..tags = ['web'],
      new Link()
        ..title = 'A rant about the anti-usability trend of web dev'
        ..description = 'Discussion about usability anti-patterns'
        ..url = 'http://www.reddit.com/r/web_design/comments/38155w/a_rant_about_the_antiusability_trend_of_web_dev/'
        ..tags = ['design', 'web'],
    ],
    'ES6' : [
      new Link()
        ..title = 'ES6 In Depth: Arrow functions'
        ..url = 'https://hacks.mozilla.org/2015/06/es6-in-depth-arrow-functions'
        ..tags = ['es6'],
      new Link()
        ..title = 'ES6 In Depth: Symbols'
        ..url = 'https://hacks.mozilla.org/2015/06/es6-in-depth-symbols/'
        ..tags = ['es6'],
      new Link()
        ..title = 'Six Steps for Approaching the Next JavaScript'
        ..description = 'Steps to start understand and working with ES6'
        ..url = 'http://developer.telerik.com/featured/six-steps-for-approaching-the-next-javascript/'
        ..tags = ['es6']
    ],
    'Other' : [
      new Link()
        ..title = 'First aid git (Russian)'
        ..description = 'Do you remember interactive most common git questions collection? This is Russian translation…'
        ..url = 'http://firstaidgit.ru/'
        ..tags = ['git']
    ],
    'Video' : [
      new Link()
        ..title = 'JavaScript Code Smells'
        ..url = 'http://elijahmanor.com/javascript-smells/'
        ..tags = ['javascript', 'video'],
    ]
  };

  static get digest5 => {
    'JavaScript' : [
      new Link()
        ..title = 'From ASM.JS to WebAssembly'
        ..description = 'Google, Microsoft, Mozilla, and a few other people has begun work on WebAssembly (binary syntax for low-level safe code)'
        ..url = 'https://brendaneich.com/2015/06/from-asm-js-to-webassembly/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'What is WebAssembly?'
        ..description = 'Detailed explanation about WebAssembly and why do we need it'
        ..url = 'https://medium.com/javascript-scene/what-is-webassembly-the-dawn-of-a-new-era-61256ec5a8f6'
        ..tags = ['javascript'],
      new Link()
        ..title = 'WebAssembly: a binary format for the web'
        ..description = 'FAQ on WebAssembly'
        ..url = 'http://www.2ality.com/2015/06/web-assembly.html'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Программирование классами в веб-приложениях'
        ..description = 'Advices how to make your JS code more structured [ru]'
        ..url = 'http://frontender.info/programmirovanie-klassami-v-veb-prilozheniyakh/'
        ..tags = ['javascript']
    ],
    'ES6' : [
      new Link()
        ..title = 'Standard ECMA-262'
        ..description = 'If anybody did not hear: ES6 (ES2015) is finally approved! Here is the specification.'
        ..url = 'http://www.ecma-international.org/publications/standards/Ecma-262.htm'
        ..tags = ['es6'],
      new Link()
        ..title = 'ES6 In Depth: Collections'
        ..url = 'https://hacks.mozilla.org/2015/06/es6-in-depth-collections'
        ..tags = ['es6'],
    ]
  };

  static get digest6 => {
    'JavaScript' : [
      new Link()
        ..title = 'Javascript in one pic'
        ..url = 'https://github.com/coodict/javascript-in-one-pic'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Immutability in JavaScript'
        ..url = 'http://www.sitepoint.com/immutability-javascript/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Functional Programming in Javascript'
        ..description = 'exercises to understand and learn functional programming in JS'
        ..url = 'http://jhusain.github.io/learnrx/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Worker-ы и shared worker-ы'
        ..description = 'Introduction to JS workers [ru]'
        ..url = 'http://habrahabr.ru/post/261307/'
        ..tags = ['javascript'],

    ],
    'ES6' : [
      new Link()
        ..title = 'ES6 Katas'
        ..description = 'ES6 katas (small exercises) based on unit tests and Babel. Nice point to try and learn ES6. Do at least one everyday'
        ..url = 'http://es6katas.org/'
        ..tags = ['es6']
    ],
    'CSS' : [
      new Link()
        ..title = 'Writing Good CSS'
        ..description = 'Some advices for writing better CSS'
        ..url = 'http://speckyboy.com/2015/06/17/writing-good-css/'
        ..tags = ['css']
    ],
    'Other' : [
      new Link()
        ..title = 'Refactoring with Loops and Collection Pipelines'
        ..description = 'The alternative way for processing collections, also nice example of step by step refactoring.'
        ' Applicable for JS as well.'
        ..url = 'http://martinfowler.com/articles/refactoring-pipelines.html'
        ..tags = ['patterns'],
      new Link()
        ..title = 'The Absolute Minimum Every Software Developer Absolutely, Positively Must Know About Unicode and Character Sets (No Excuses!)'
        ..description = 'The minimum you have to know about Unicode and charsets'
        ..url = 'http://www.joelonsoftware.com/articles/Unicode.html'
        ..tags = []
    ],
    'Video' : [
      new Link()
        ..title = 'Async and Streaming JavaScript, We\'re All Doing it Wrong!'
        ..description = 'Video how FRP(functional reactive programming) could be applied to async JS'
        ..url = 'https://vimeo.com/131196784'
        ..tags = ['javascript', 'video'],
      new Link()
        ..title = 'JSConf Budapest'
        ..description = 'Videos from JSConf Budapest'
        ..url = 'https://www.youtube.com/channel/UCCjbi45K7abWuGGm2yfDg5w'
        ..tags = ['javascript', 'video'],
    ]
  };

  static get digest7 => {
    'JavaScript' : [
      new Link()
        ..title = 'JavaScript Frameworks Don’t Matter – The Real Reasons Why Projects Fail'
        ..description = 'in the Digest #1 i send you article about JavaScript project checklist. If you missed the result of this experiment  - here it is.'
        ..url = 'http://blog.bitovi.com/real-reasons-projects-fail/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Solar system of JS'
        ..description = 'An interesting visualization of the current state of frontend world.'
        ..url = 'https://shaunlebron.github.io/solar-system-of-js/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'SEVEN SURPRISING JAVASCRIPT \'FEATURES\''
        ..url = 'http://blog.scottlogic.com/2015/07/02/surprising-things-about-js.html'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Introduction to Service Worker'
        ..url = 'http://www.html5rocks.com/en/tutorials/service-worker/introduction/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Merge Arrays with JavaScript'
        ..url = 'http://davidwalsh.name/merge-arrays-javascript'
        ..tags = ['javascript']
    ],
    'ES6' : [
      new Link()
        ..title = 'Javascript Async Control Flow'
        ..description = 'An article about managing async control flow using ES6 and ES7 features.'
        ..url = 'http://kaye.us/javascript-async-control-flow/'
        ..tags = ['es6', 'es7'],
      new Link()
        ..title = 'ES6 Feature Performance'
        ..url = 'http://www.incaseofstairs.com/'
        ..tags = ['es6', 'es7']
    ],
    'Web-development' : [
      new Link()
        ..title = 'Things to Know When Making a Web Application in 2015'
        ..url = 'http://blog.venanti.us/web-app-2015/'
        ..tags = ['web']
    ],
    'CSS' : [
      new Link()
        ..title = '10 Ways to Minimize Reflows and Improve Performance'
        ..url = 'http://www.sitepoint.com/10-ways-minimize-reflows-improve-performance/'
        ..tags = ['css'],
      new Link()
        ..title = 'Understanding Block Formatting Contexts in CSS'
        ..url = 'http://www.sitepoint.com/understanding-block-formatting-contexts-in-css/'
        ..tags = ['css']
    ],
    'News' : [
      new Link()
        ..title = 'Released Today: Visual Studio 2015, ASP.NET 4.6, ASP.NET 5 & EF 7 Previews'
        ..url = 'http://weblogs.asp.net/scottgu/released-today-visual-studio-2015-asp-net-4-6-asp-net-5-ef-7-previews'
        ..tags = ['news']
    ],
    'Video' : [
      new Link()
        ..title = 'Videos from Front-Trends 2015 conf'
        ..url = 'https://www.youtube.com/playlist?list=PLBevk0eXLOGfkVhE7PArRg6nKHqmMKgtB'
        ..tags = ['javascript', 'video'],
      new Link()
        ..title = 'Videos from CSS conf in NY'
        ..url = 'https://2015.cssconf.com/#videos'
        ..tags = ['css', 'video'],
      new Link()
        ..title = 'ECMAScript 6: A Better JavaScript for the Ambient Computing Era'
        ..description = 'An interesting video about different aspects of ES6.'
        ..url = 'http://www.infoq.com/presentations/js6-ambient-computing-era'
        ..tags = ['es6', 'video']
    ]
  };

  static get digest8 => {
    'JavaScript' : [
      new Link()
        ..title = 'The most adequate guide to functional programming (book)'
        ..url = 'https://github.com/DrBoolean/mostly-adequate-guide/blob/master/README.md'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Annoncing TypeScript 1.5'
        ..description = 'quick overlook on TypeScript 1.5 feature, which just was released (if you missed it)'
        ..url = 'http://blogs.msdn.com/b/typescript/archive/2015/07/20/announcing-typescript-1-5.aspx'
        ..tags = ['javascript']
    ],
    'ES6' : [
      new Link()
        ..title = 'ES6 In Depth: Proxies'
        ..url = 'https://hacks.mozilla.org/2015/07/es6-in-depth-proxies-and-reflect/'
        ..tags = ['es6'],
      new Link()
        ..title = 'JavaScript Promises'
        ..description = 'One more tutorial on promises'
        ..url = 'http://www.html5rocks.com/en/tutorials/es6/promises/'
        ..tags = ['es6']
    ],
    'CSS':[
      new Link()
        ..title = '12 little-known CSS facts'
        ..url = 'http://www.sitepoint.com/12-little-known-css-facts-the-sequel/'
        ..tags = ['css'],
    ],
    'Other':[
      new Link()
        ..title = 'What to look for in a Code Review'
        ..description = 'Some advices how to do better reviews.'
        ..url = 'http://blog.jetbrains.com/upsource/2015/07/23/what-to-look-for-in-a-code-review/'
        ..tags = [],
      new Link()
        ..title = 'Visualization of different sorting algoritms'
        ..url = 'http://www.sorting-algorithms.com/'
        ..tags = [],
      new Link()
        ..title = 'Resource #1 which can help to check your web site in different browsers.'
        ..url = 'https://www.spoon.net/browsers'
        ..tags = [],
      new Link()
        ..title = 'Resource #2 which can help to check your web site in different browsers.'
        ..url = 'https://www.browserstack.com/'
        ..tags = [],
    ],
    'News':[
      new Link()
        ..title = 'Released Today: Visual Studio 2015, ASP.NET 4.6, ASP.NET 5 & EF 7 Previews'
        ..description = 'Quick overview of VS2015, .Net 4.6, Asp.Net 5, which just were released (if you missed it)'
        ..url = 'http://weblogs.asp.net/scottgu/released-today-visual-studio-2015-asp-net-4-6-asp-net-5-ef-7-previews'
        ..tags = []
    ],
    'Web-development':[
      new Link()
        ..title = 'Down and Dirty with Chrome Developer Tools'
        ..description = 'Nice tutorial on Chrome DevTools'
        ..url = 'http://blittle.github.io/chrome-dev-tools/'
        ..tags = []
    ],
    'Video':[
      new Link()
        ..title = 'Sebastian McKenzie: JavaScript Transformation | JSConf US 2015'
        ..description = 'Video about how JS transformations can help improve developer workflow'
        ..url = 'https://www.youtube.com/watch?v=rKuNbEwoQfQ&app=desktop'
        ..tags = []
    ]
  };
  static get digest9 => {
    'JavaScript' : [
      new Link()
        ..title = 'Linting JavaScript in 2015'
        ..description = 'short article about current state of JS linting. I think we should use linting in our projects. What do you think?'
        ..url = 'http://blog.lauritz.me/linting-javascript-in-2015/'
        ..tags = ['javascript', 'tools'],
      new Link()
        ..title = 'Promises guide'
        ..description = 'One more nice tutorial about using promises'
        ..url = 'https://www.w3.org/2001/tag/doc/promises-guide'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Currying in JavaScript'
        ..url = 'https://medium.com/@kevincennis/currying-in-javascript-c66080543528'
        ..tags = ['javascript']
    ],
    'ES6' : [
      new Link()
        ..title = 'New regular expression features in ES6'
        ..url = 'http://www.2ality.com/2015/07/regexp-es6.html'
        ..tags = ['es6'],
      new Link()
        ..title = 'What do ES6 modules export?'
        ..description = 'The article explains how ES6 modules work'
        ..url = 'http://www.2ality.com/2015/07/es6-module-exports.html'
        ..tags = ['es6'],
      new Link()
        ..title = 'ES6 In Depth: Classes'
        ..url = 'https://hacks.mozilla.org/2015/07/es6-in-depth-classes/'
        ..tags = ['es6'],
      new Link()
        ..title = 'Introduction to ES6 iterators'
        ..url = 'https://strongloop.com/strongblog/introduction-to-es6-iterators'
        ..tags = ['es6']
    ],
    'CSS':[
      new Link()
        ..title = '12 little-known CSS facts'
        ..url = 'http://www.sitepoint.com/12-little-known-css-facts-the-sequel/'
        ..tags = ['css'],
    ],
    'Other':[
      new Link()
        ..title = 'The different between minification and gzip'
        ..url = 'https://css-tricks.com/the-difference-between-minification-and-gzipping/'
        ..tags = [],
      new Link()
        ..title = 'Visual introduction to machine learning'
        ..url = 'http://www.r2d3.us/visual-intro-to-machine-learning-part-1/'
        ..tags = [],
    ],
    'News':[
      new Link()
        ..title = 'What’s new in Chrome 45 Beta'
        ..url = 'http://blog.chromium.org/2015/07/chrome-45-beta-new-es2015-features.html'
        ..tags = [],
      new Link()
        ..title = 'Bringing automated testing to Microsoft Edge through WebDriver'
        ..description = 'MS added possibility to run automated tests in MS Edge via WebDriver'
        ..url = 'http://blogs.windows.com/msedgedev/2015/07/23/bringing-automated-testing-to-microsoft-edge-through-webdriver/'
        ..tags = [],
    ]
  };

  static get digest10 => {
    'JavaScript' : [
      new Link()
        ..title = 'Understanding Fluent APIs in JavaScript'
        ..url = 'http://code.tutsplus.com/tutorials/understanding-fluent-apis-in-javascript--cms-24429'
        ..tags = ['javascript'],
      new Link()
        ..title = 'The top 10 mistakes that KnockoutJS developers make'
        ..url = 'https://www.airpair.com/knockout/posts/top-10-mistakes-knockoutjs'
        ..tags = ['javascript', 'knockout']
    ],
    'ES6' : [
      new Link()
        ..title = 'The JavaScript looping evolution'
        ..url = 'http://developer.telerik.com/featured/the-javascript-looping-evolution/'
        ..tags = ['es6', 'es7'],
      new Link()
        ..title = 'ES6 In Depth: Subclassing'
        ..url = 'https://hacks.mozilla.org/2015/08/es6-in-depth-subclassing'
        ..tags = ['es6'],
      new Link()
        ..title = 'ES6 In Depth: let and const'
        ..url = 'https://hacks.mozilla.org/2015/07/es6-in-depth-let-and-const'
        ..tags = ['es6'],
      new Link()
        ..title = 'Migrating code from ES3 → ES5 → ES6'
        ..description = 'An article about scoping improvements from ES3 to ES5 to ES6'
        ..url = 'http://damonbauer.me/migrating-from-es3-es5-es6/'
        ..tags = ['es6']
    ]
  };

  static get digest11 => {
    'JavaScript' : [
      new Link()
        ..title = 'JavaScript debugging tips and tricks'
        ..url = 'http://www.zsoltnagy.eu/javascript-debugging-tips-and-tricks/'
        ..tags = ['javascript'],
      new Link()
        ..title = '.bind() for dummies'
        ..url = 'https://medium.com/@dave_lunny/bind-for-dummies-5d1a750725b8'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Why I use Tape Instead of Mocha & So Should You'
        ..description = 'An opinion about JS test frameworks. Also contains good thoughts about unit testing basics.'
        ..url = 'https://medium.com/javascript-scene/why-i-use-tape-instead-of-mocha-so-should-you-6aa105d8eaf4'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Lodash: 10 JavaScript utility functions that you should probably stop rewriting'
        ..url = 'http://colintoh.com/blog/lodash-10-javascript-utility-functions-stop-rewriting'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Introduction into JavaScript AST'
        ..url = 'http://blog.redradix.com/working-with-javascript-ast/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Binary in Javascript'
        ..description = 'An interesting reading how binary arithmetic usage can improve performance in JS'
        ..url = 'http://danthedev.com/2015/07/25/binary-in-javascript/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'DOM Enlightenment'
        ..description = 'Free online book about the relationship between JavaScript and the modern HTML DOM'
        ..url = 'http://domenlightenment.com/'
        ..tags = ['javascript']
    ],
    'CSS' : [
      new Link()
        ..title = 'Understanding CSS: selector specificity'
        ..url = 'https://medium.com/@dte/understanding-css-selector-specificity-a02238a02a59'
        ..tags = ['css'],
      new Link()
        ..title = 'HIDING ELEMENTS WITH CSS'
        ..description = 'Quick overview of different ways for hiding elements with CSS'
        ..url = 'http://bitsofco.de/2015/hiding-elements-with-css/'
        ..tags = ['css']
    ],
    'ES6' : [
      new Link()
        ..title = 'ECMAScript 6 equivalents in ES5'
        ..url = 'https://github.com/addyosmani/es6-equivalents-in-es5/blob/master/README.md'
        ..tags = ['es6']
    ],
    'News' : [
      new Link()
        ..title = 'What’s new in Firefox 40'
        ..url = 'https://hacks.mozilla.org/2015/08/trainspotting-firefox-40/'
        ..tags = ['news']
    ],
    'Web-development' : [
      new Link()
        ..title = 'Chrome DevTools'
        ..description = 'An official Chrome DevTools documentation'
        ..url = 'https://developers.google.com/web/tools/chrome-devtools/'
        ..tags = ['web', 'development', 'tips']
    ],
    'Other' : [
      new Link()
        ..title = 'Dungeons & Developers'
        ..description = 'an RPG-style talent tree for web developers. Has a lot links on tutorials and courses which can help you become a Web Master =)'
        ..url = 'http://www.dungeonsanddevelopers.com/'
        ..tags = [],
      new Link()
        ..title = 'Bringing SSL To Your Private Network'
        ..description = 'How to setup SSL certificate on local machine'
        ..url = 'https://www.webreflection.co.uk/blog/2015/08/08/bringing-ssl-to-your-private-network'
        ..tags = []
    ]
  };

  static get digest12 => {
    'JavaScript' : [
      new Link()
        ..title = 'Tasks, microtasks, queues and schedules'
        ..description = 'Great article about queues in JS'
        ..url = 'https://jakearchibald.com/2015/tasks-microtasks-queues-and-schedules/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'JavaScript jargon: 10 terms you should know'
        ..url = 'http://www.hongkiat.com/blog/javascript-jargon/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Backdooring your javascript using minifier bugs'
        ..url = 'https://zyan.scripts.mit.edu/blog/backdooring-js/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'querySelectorAll from an element probably doesn\'t do what you think it does'
        ..url = 'https://www.lvh.io/posts/queryselectorall-from-an-element-probably-doesnt-do-what-you-think-it-does.html'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Things you can do with native DOM'
        ..url = 'http://ponyfoo.com/articles/things-you-can-do-in-plain-javascript'
        ..tags = ['javascript']
    ],
    'CSS' : [
      new Link()
        ..title = 'Understanding critical CSS'
        ..url = 'http://www.smashingmagazine.com/2015/08/understanding-critical-css/'
        ..tags = ['css'],
      new Link()
        ..title = 'Constructing the Object Model'
        ..description = 'How DOM and CCSOM are build and rendered by browser'
        ..url = 'https://developers.google.com/web/fundamentals/performance/critical-rendering-path/constructing-the-object-model?hl=en'
        ..tags = ['css'],
      new Link()
        ..title = 'How floating works'
        ..url = 'http://bitsofco.de/2015/how-floating-works/'
        ..tags = ['css'],
      new Link()
        ..title = 'CSS element() function (FF only)'
        ..url = 'http://iamvdo.me/en/blog/css-element-function'
        ..tags = ['css']
    ],
    'ES6' : [
      new Link()
        ..title = 'ES6 In Depth: Modules'
        ..url = 'https://hacks.mozilla.org/2015/08/es6-in-depth-modules/'
        ..tags = ['es6'],
      new Link()
        ..title = 'ES6 In Depth: The future'
        ..url = 'https://hacks.mozilla.org/2015/08/es6-in-depth-the-future/'
        ..tags = ['es6'],
      new Link()
        ..title = 'Logging variables via an ES6 tagged template'
        ..url = 'http://www.2ality.com/2015/08/logging-variables-tagged-template.html'
        ..tags = ['es6']
    ],
    'News' : [
      new Link()
        ..title = 'What’s new in Chrome DevTool'
        ..url = 'https://developers.google.com/web/updates/2015/07/23/devtools-digest-aggregated-timeline-details-color-palettes-and-more'
        ..tags = ['news']
    ],
    'Web-development' : [
      new Link()
        ..title = '10 common mistakes web developers make'
        ..url = 'http://www.sitepoint.com/10-common-mistakes-web-developers-make/'
        ..tags = ['web', 'development', 'tips'],
      new Link()
        ..title = 'Eliminating roundtrips with Preconnect'
        ..url = 'https://www.igvita.com/2015/08/17/eliminating-roundtrips-with-preconnect/'
        ..tags = ['web', 'development', 'tips'],
      new Link()
        ..title = '5 Questions Every Unit Test Must Answer'
        ..description = '5 questions every unit test must answer. How to write better tests.'
        ..url = 'https://medium.com/javascript-scene/what-every-unit-test-needs-f6cd34d9836d'
        ..tags = ['web', 'development', 'tips']
    ],
    'Other' : [
      new Link()
        ..title = 'Learning regular expressions the practical way'
        ..url = 'http://hugogiraudel.com/2015/08/19/learning-regular-expressions-the-practical-way/'
        ..tags = ['development'],
      new Link()
        ..title = 'How DNS works'
        ..description = 'Funny comics explaining how DNS works'
        ..url = 'https://howdns.works/'
        ..tags = ['development']
    ],
    'Video' : [
      new Link()
        ..title = 'Javascript Numbers - Alex Mackey'
        ..description = 'video about how numbers are presented in JS'
        ..url = 'https://vimeo.com/132787617'
        ..tags = ['video'],
      new Link()
        ..title = 'Recent conference talks worth watching'
        ..url = 'https://css-tricks.com/recent-conference-talks-worth-watching/'
        ..tags = ['video'],
      new Link()
        ..title = 'Watch Online You Gotta Love Frontend Conference 2015'
        ..description = 'Videos from “You Gotta Love Frontend” Conference 2015'
        ..url = 'https://medium.com/@kindofone/watch-online-you-gotta-love-frontend-conference-2015-1d488676d869'
        ..tags = ['video']
    ]
  };
  static get digest13 => {
    'JavaScript' : [
      new Link()
        ..title = 'How do JavaScript closures work under the hood'
        ..description = 'How do JavaScript closures work under the hood'
        ..url = 'http://dmitryfrank.com/articles/js_closures'
        ..tags = ['javascript'],
      new Link()
        ..title = 'How I Came To Love TypeScript'
        ..description = 'An article about benefits of TypeScript.'
        ..url = 'http://developer.telerik.com/featured/how-i-came-to-love-typescript/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'don\'t make functions within a loop'
        ..url = 'http://jslinterrors.com/dont-make-functions-within-a-loop'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Measuring JavaScript Functions’ Performance.'
        ..url = 'http://www.sitepoint.com/measuring-javascript-functions-performance/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Using requestIdleCallback'
        ..description = 'Using requestIdleCallback, a new performance API for scheduling work when the user is idle.'
        ..url = 'https://developers.google.com/web/updates/2015/08/27/using-requestidlecallback'
        ..tags = ['javascript'],
      new Link()
        ..title = '7 Reasons to Use Knockout.js for Web Development'
        ..description = 'An article about benefits of KnockoutJS.'
        ..url = 'http://codecondo.com/7-reasons-to-use-knockout-js-for-web-development/'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Javascript WYSIWYG editors'
        ..description = 'A list of Javascript WYSIWYG editors.'
        ..url = 'https://github.com/cheeaun/mooeditable/wiki/Javascript-WYSIWYG-editors'
        ..tags = ['javascript']
    ],
    'CSS' : [
      new Link()
        ..title = 'What forces layout / reflow'
        ..description = 'A cheat-sheet on things which can force layout/reflow.'
        ..url = 'https://gist.github.com/paulirish/5d52fb081b3570c81e3a'
        ..tags = ['css']
    ],
    'ES6' : [
      new Link()
        ..title = 'Promisees'
        ..description = 'Nice visualization of Promises work'
        ..url = 'http://bevacqua.github.io/promisees/'
        ..tags = ['es6'],
      new Link()
        ..title = 'Typed arrays in ECMAScript 6'
        ..url = 'http://www.2ality.com/2015/09/typed-arrays.html'
        ..tags = ['es6'],
      new Link()
        ..title = 'ES6 number improvements in depth'
        ..url = 'http://ponyfoo.com/articles/es6-number-improvements-in-depth'
        ..tags = ['es6']
    ],
    'News' : [
      new Link()
        ..title = 'Announcing TypeScript 1.6'
        ..url = 'http://blogs.msdn.com/b/typescript/archive/2015/09/16/announcing-typescript-1-6.aspx'
        ..tags = ['news'],
      new Link()
        ..title = 'Chrome 46 Beta: flexible animations and improved loading performance.'
        ..url = 'http://blog.chromium.org/2015/09/chrome-46-beta-flexible-animations-and.html'
        ..tags = ['news']
    ],
    'Web-development' : [
      new Link()
        ..title = 'Prefetching, preloading, prebrowsing described'
        ..url = 'https://css-tricks.com/prefetching-preloading-prebrowsing/'
        ..tags = ['web', 'development', 'tips'],
      new Link()
        ..title = 'Quick trick: using template to delay loading of images'
        ..url = 'http://christianheilmann.com/2015/09/08/quick-trick-using-template-to-delay-loading-of-images/'
        ..tags = ['web', 'development', 'tips'],
      new Link()
        ..title = 'Six tips for Chrome DevTools'
        ..url = 'https://css-tricks.com/six-tips-for-chrome-devtools/'
        ..tags = ['web', 'development', 'tips'],
      new Link()
        ..title = '5 tools to make your website go faster'
        ..description = '5 tools to make your website go faster'
        ..url = 'http://www.creativebloq.com/web-design/5-top-techniques-measuring-your-websites-performance-61515245'
        ..tags = ['web', 'development', 'tips']
    ],
    'Other' : [
      new Link()
        ..title = 'Temporal patterns'
        ..url = 'http://martinfowler.com/eaaDev/timeNarrative.html'
        ..tags = ['patterns'],
      new Link()
        ..title = 'Opportunistic Refactoring'
        ..description = 'Nice article about refactoring'
        ..url = 'http://martinfowler.com/bliki/OpportunisticRefactoring.html'
        ..tags = ['development'],
      new Link()
        ..title = 'Learn X in Y minutes'
        ..description = 'Great resource with quick tours to different programming languages'
        ..url = 'http://learnxinyminutes.com/'
        ..tags = ['development']
    ],
    'Video' : [
      new Link()
        ..title = 'Yan Zhu | TXJS 2015'
        ..description = 'An interesting talk about tricks for improving web security'
        ..url = 'https://www.youtube.com/watch?v=CDdYu2CJ-SU&list=PLMWftTFfsA8Om-GqKm46bw8GVxyKXRz0X&index=2'
        ..tags = ['video']
    ]
  };

  static get digest14 => {
    'JavaScript' : [
      new Link()
        ..title = 'ESLint: The Next-Generation JavaScript Linter'
        ..description = 'ice introduction and overview of ESLint (JavaScript linter)'
        ..url = 'http://www.smashingmagazine.com/2015/09/eslint-the-next-generation-javascript-linter/'
        ..tags = ['javascript'],
      new Link()
        ..title = '12 rules for professional JavaScript in 2015'
        ..url = 'https://medium.com/@housecor/12-rules-for-professional-javascript-in-2015-f158e7d3f0fc'
        ..tags = ['javascript'],
      new Link()
        ..title = 'Are JavaScripts comments useless'
        ..description = 'An opinion about using comments in JavaScript code'
        ..url = 'http://www.zsoltnagy.eu/are-javascript-comments-useless/'
        ..tags = ['javascript']
    ],
    'CSS' : [
      new Link()
        ..title = 'Transforms in CSS Free EBook'
        ..description = 'O’Reilly allows us to get a free copy of “Transforms in CSS” book by Eric A. Meyer'
        ..url = 'http://www.oreilly.com/free/transforms-in-css.csp?download=true'
        ..tags = ['css']
    ],
    'ES6' : [
      new Link()
        ..title = '__proto__ in ECMAScript 6'
        ..url = 'http://www.2ality.com/2015/09/proto-es6.html'
        ..tags = ['es6'],
      new Link()
        ..title = 'ES6 Generators and asynchronous JavaScript (again =))'
        ..url = 'http://alexperry.io/javascript/2015/09/17/es6-generators-and-asynchronous-javascript.html'
        ..tags = ['es6'],
      new Link()
        ..title = 'Awesome promises'
        ..description = 'A list of resources about promises'
        ..url = 'https://github.com/wbinnssmith/awesome-promises/blob/master/README.md'
        ..tags = ['es6'],
      new Link()
        ..title = 'ECMAScript 6: holes in Arrays'
        ..url = 'http://www.2ality.com/2015/09/holes-arrays-es6.html'
        ..tags = ['es6']
    ],
    'Web-development' : [
      new Link()
        ..title = 'Introducing RAIL: A User-Centric Model For Performance'
        ..description = 'Introduction to RAIL(response, animation, idle, load) web performance model'
        ..url = 'http://www.smashingmagazine.com/2015/10/rail-user-centric-model-performance/'
        ..tags = ['web', 'development', 'tips'],
      new Link()
        ..title = 'What\'s new in Chrome DevTools?'
        ..description = 'the presentation “What\'s new in Chrome DevTools?” by Addy Osmani'
        ..url = 'https://speakerdeck.com/addyosmani/whats-new-in-chrome-devtools'
        ..tags = ['web', 'development', 'tips']
    ],
    'Other' : [
      new Link()
        ..title = 'Code Reviews Can Make or Break Your Team'
        ..description = 'Good article about code reviews'
        ..url = 'https://medium.com/swlh/code-reviews-can-make-or-break-your-team-a3cfdcc15de1'
        ..tags = ['patterns']
    ]
  };

  static get digest15 => {
    'JavaScript' : [
      new Link()
        ..title = '10 Interview QuestionsEvery JavaScript Developer Should Know'
        ..description = 'At most companies, management must trust the developers to give technical interviews in order to assess candidate skills. If you do well as a candidate, you’ll eventually need to interview. Here’s how. I advise people to hire based on whether or not a developer believes in class inheritance.'
        ..url = 'https://medium.com/javascript-scene/10-interview-questions-every-javascript-developer-should-know-6fa6bdf5ad95#.1bk0p22iv'
        ..tags = ['javascript'],
      new Link()
        ..title = 'The difference between Service Workers, Web Workers and WebSockets'
        ..description = 'As fairly-new web technologies, Service Workers, Web Workers and WebSockets all started, stalled, and then sort of made a resurgence. And so I find myself somewhat confused by exactly what each does, what the differences between them are, and what purpose each ideally serves.'
        ..url = 'http://aarontgrogg.com/blog/2015/07/20/the-difference-between-service-workers-web-workers-and-websockets/'
        ..tags = ['javascript'],
    ],
    'Web-development' : [
      new Link()
        ..title = 'Cheat Sheets for Frontend Developers'
        ..description = 'Cheat sheets are amazingly handy quick reference resources that are time saving and educational, so we should probably all use them at one time or another. For frontend development, cheat sheets are especially helpful as most of us cannot commit every snippet, tag, etc, to memory.'
        ..url = 'https://webdesignviews.com/cheat-sheets/'
        ..tags = ['web', 'development', 'tips'],
      new Link()
        ..title = 'A Short Refresh On HTML5'
        ..description = 'The doctype pre HTML5 was pretty long and cumbersome. The new HTML5 doctype looks like this: The doctype is case-insensitive, I mostly write it in all lowercase.'
        ..url = 'https://topaxi.codes/a-short-refresh-on-html5/'
        ..tags = ['web', 'development', 'tips'],
      new Link()
        ..title = 'Useful Javascript debugging tips you might not know'
        ..url = 'https://raygun.io/blog/2015/06/useful-javascript-debugging-tips-you-didnt-know/'
        ..tags = ['web', 'development', 'tips'],
      new Link()
        ..title = 'Dev Tips'
        ..description = 'A developer tip, in the form of a gif, in your inbox each week.'
        ..url = 'https://umaar.com/dev-tips/'
        ..tags = ['web', 'development', 'tips']
    ],
    'ES6' : [
      new Link()
        ..title = 'ES6 Math Additions in Depth'
        ..description = 'You’ve made it! Here’s another article in the ES6 – “What? I’d rather develop for IE6” – in Depth series. If you’ve never been around here before, start with A Brief History of ES6 Tooling.'
        ..url = '<todo>'
        ..tags = ['es6'],
      new Link()
        ..title = 'Enumerability in ECMAScript 6'
        ..description = 'Enumerability is an attribute of object properties. This blog post explains how it works in ECMAScript 6. Let’s first explore what attributes are.'
        ..url = 'http://www.2ality.com/2015/10/enumerability-es6.html?m=1'
        ..tags = ['es6'],
      new Link()
        ..title = 'The Genius of Template Strings in ES6  '
        ..description = 'ES6 is the future of JavaScript and it is already here. It is a finished specification, and it brings a lot of features a language requires to stay competitive with the needs of the web of now.'
        ..url = 'http://code.tutsplus.com/tutorials/the-genius-of-template-strings-in-es6--cms-24915'
        ..tags = ['es6'],
      new Link()
        ..title = 'The names of functions in ES6'
        ..description = 'This property is useful for debugging (its value shows up in stack traces) and some metaprogramming tasks (picking a function by name etc.). Prior to ECMAScript 6 (ES6), this property was already supported by most engines.'
        ..url = 'http://www.2ality.com/2015/09/function-names-es6.html'
        ..tags = ['es6']
    ],
    'CSS' : [
      new Link()
        ..title = 'PostCSS Deep Dive: What You Need to Know'
        ..description = 'If there’s one thing you really need to know about PostCSS, it’s that you should learn what it is and how to use it ASAP. In this series, we’re going to take a deep dive into PostCSS and take you through all the major ways you can use it.'
        ..url = 'http://webdesign.tutsplus.com/tutorials/postcss-deep-dive-what-you-need-to-know--cms-24535'
        ..tags = ['css'],
      new Link()
        ..title = 'Use Cases For Css Calc'
        ..description = 'If you know the height of the element, CSS Calc can make it super simple to position an element vertical centre and respect a responsive layout. 50vh is always half the height of the viewport, so we position the element half way down the screen.'
        ..url = 'http://vincentp.me/blog/use-cases-for-calc/'
        ..tags = ['css'],
      new Link()
        ..title = 'CSS stacking contexts: What they are and how they work'
        ..description = 'Stacking contexts are an aspect of CSS that trips up most developers. I don\'t think I fully understood them until I wrote the layout chapter of CSS Master. Sure, I understood that z-index required position to be something besides static.'
        ..url = 'http://tiffanybbrown.com/2015/09/css-stacking-contexts-wtf/?utm_source=html5weekly&utm_medium=email'
        ..tags = ['css'],
      new Link()
        ..title = 'How To Do Knockout Text'
        ..description = 'The Lodge is members-only web design and development videos and live help. Log In or Sign Up.'
        ..url = 'https://css-tricks.com/how-to-do-knockout-text/?utm_source=html5weekly&utm_medium=email'
        ..tags = ['css'],
      new Link()
        ..title = 'Style Guides, Pattern Libraries and Code Standards // Speaker Deck'
        ..description = 'After interviewing a dozen people with Brad Frost for their podcast on Style Guides for the web, Anna has collated all their findings for this talk on the different kinds that are out there, how they\'re built, what works (and what doesn\'t), and what makes them such a useful tool.'
        ..url = 'https://speakerdeck.com/anna/style-guides-pattern-libraries-and-code-standards'
        ..tags = ['css'],
      new Link()
        ..title = 'CSS Guidelines'
        ..description = 'is a document by me, Harry Roberts. I am a Consultant Front-end Architect from the UK, and I help companies all over the world write and manage better quality UIs for their products and teams. I am available for hire.'
        ..url = 'http://cssguidelin.es'
        ..tags = ['css'],

    ],
    'C#' : [
      new Link()
        ..title = ' Top 15 Underutilized Features of .NET'
        ..title = 'I have been keen on the elegance and beauty of the C# language since I wrote my first lines of C# code. I read different articles and books about it, always when I have free time. Here I am going to share with you dozens of my favorite underutilized features of C# (oft-forgotten/interesting/arcane/hidden).'
        ..url = 'http://automatetheplanet.com/top-15-underutilized-features-dotnet/'
        ..tags = ['.net'],
      new Link()
        ..title = 'Top 15 Underutilized Features of .NET Part 2'
        ..description = 'In this article, I’m going to share with you even more hidden features of C# language (underutilized). If you missed the first publication you should check it- Top 15 Underutilized Features of .NET'
        ..url = 'http://www.codeproject.com/Articles/1027959/Top-Underutilized-Features-of-NET-Part'
        ..tags = ['.net']
    ],
    'Other' : [
      new Link()
        ..title = '40 Key Computer Science Concepts Explained In Layman’s Terms'
        ..title = 'To make learning more fun and interesting, here’s a list of important computer science theories and concepts explained with analogies and minimal technical terms. It’s like an ultra-fast-track computer science degree program for everyone, just to get you to understand the general concepts.'
        ..url = 'http://carlcheo.com/compsci',
      new Link()
        ..title = 'Side projects - why it is important for every developer'
        ..description = 'I have met hundreds of developers. The best ones always have a side project or two that they hack away on at night. As an employer I encourage that, but I have heard that a lot of workplaces ban personal projects.'
        ..url = 'http://david.elbe.me/development/2014/09/26/side-projects.html',
      new Link()
        ..title = 'DTO vs Value Object vs POCO'
        ..description = 'In this article, I’d like to clarify the differences in DTO vs Value Object vs POCO where DTO stands for Data Transfer Object, and POCO is Plain Old CLR Object, also known as POJO in Java environment. First of all, I want to make a note regarding Value Object.'
        ..url = 'http://enterprisecraftsmanship.com/2015/04/13/dto-vs-value-object-vs-poco/'
    ],
    'Video' : [
      new Link()
        ..title = 'Supercharged'
        ..url = 'https://www.youtube.com/playlist?list=PLNYkxOF6rcIBz9ACEQRmO9Lw8PW7vn0lr'
        ..tags = ['video'],
      new Link()
        ..title = 'Javascript ES6 Cheatsheet - the best of JS ES6'
        ..description = 'After a year of coding ES6 full-time, my favorite uses, the best parts, and what you need to know about them.Javascript ES6 comes with a TON of extremely useful new features - all of which you can use TODAY on bot browser and server side code using transpilers like babel or traceur. I highly recomm'
        ..url = 'https://www.youtube.com/watch?v=AfWYO8t7ed4'
        ..tags = ['video']
    ],
    'News' : [
      new Link()
        ..title = 'Inspecting Security and Privacy Settings of a Website ★ Mozilla Hacks – the Web developer blog'
        ..description = 'Starting in Firefox 41, Mozilla provides a developer tool that allows users to inspect the security settings of a website. Using GCLI (Graphic Command Line Interface) a user can inspect the Content Security Policy (CSP) of a website.'
        ..url = 'https://hacks.mozilla.org/2015/10/inspecting-security-and-privacy-settings-of-a-website/'
        ..tags = ['news']
    ]
  };
}