library EmailDigestGenerator.link_aggregator;

class LinkAggregator {
	List<Link> getLinks() => [
		new Link("First article", "The first one", "http://first", ["Digest","ES6"]),
		new Link("Second article", "The second one", "http://second", ["News","Digest"]),
		new Link("Last article", "The last one", "http://last", ["JavaScript"]),
		new Link("Another article", "The anothe one", "http://other", [])
	];
}

class Link {
	String title;
	String description;
	String url;
	List<String> tags;

	Link(this.title, this.description, this.url, this.tags);
}
