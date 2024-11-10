import 'link_model.dart'; // Ensure the Link model is imported

class Folder {
  String name;
  List<Link> links;

  Folder({
    required this.name,
    List<Link>? links, // Use a default empty list if not provided
  }) : links = links ?? [];

  // Add a link to the folder
  void addLink(Link link) {
    links.add(link);
  }

  // Convert Folder to JSON format for storage
  Map<String, dynamic> toJson() => {
    'name': name,
    'links': links.map((link) => link.toJson()).toList(),
  };

  // Factory method to create Folder from JSON data
  factory Folder.fromJson(Map<String, dynamic> json) {
    return Folder(
      name: json['name'],
      links: (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
