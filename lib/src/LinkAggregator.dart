library EmailDigestGenerator.link_aggregator;

class Link {
	int id;
	String title;
	String description;
	String url;
	List<String> tags;
	String imageUrl;

	Link(this.id, this.title, this.description, this.url, this.tags, {this.imageUrl});
}
