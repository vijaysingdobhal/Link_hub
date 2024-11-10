import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for Clipboard
import '../models/link_model.dart';

class LinkTile extends StatelessWidget {
  final Link link;

  const LinkTile({super.key, required this.link});

  void _launchURL(String url) async {
    // Implement URL launching logic
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(link.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(link.url),
            Text('Categories: ${link.categories.join(', ')}'),
            Text('Tags: ${link.tags.join(', ')}'),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.copy),
              onPressed: () {
                Clipboard.setData(ClipboardData(text: link.url));
              },
            ),
            IconButton(
              icon: const Icon(Icons.open_in_browser),
              onPressed: () => _launchURL(link.url),
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                Navigator.pushNamed(context, '/add_edit', arguments: link);
              },
            ),
          ],
        ),
      ),
    );
  }
}
