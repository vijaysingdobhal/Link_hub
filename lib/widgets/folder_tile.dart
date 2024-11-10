import 'package:flutter/material.dart';
import '../models/folder_model.dart';
import '../widgets/link_tile.dart';

class FolderTile extends StatelessWidget {
  final Folder folder;

  const FolderTile({super.key, required this.folder});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(folder.name),
      children: [
        // Add a button to add links inside the folder
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/add_edit_link', arguments: folder);
          },
          child: Text('Add Link to ${folder.name}'),
        ),
        // Display links inside this folder
        ...folder.links.map((link) => LinkTile(link: link)),
      ],
    );
  }
}
