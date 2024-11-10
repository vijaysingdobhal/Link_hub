class Link {
  final String id; // Unique identifier for the link
  final String title;
  final String url;
  final List<String> categories; // New property for categories
  final List<String> tags; // New property for tags

  Link({
    required this.id,
    required this.title,
    required this.url,
    this.categories = const [],
    this.tags = const [],
  });

  // Method to create a Link object from JSON
  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      id: json['id'],
      title: json['title'],
      url: json['url'],
      categories: List<String>.from(json['categories'] ?? []),
      tags: List<String>.from(json['tags'] ?? []),
    );
  }

  // Method to convert Link object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'url': url,
      'categories': categories,
      'tags': tags,
    };
  }
}
