import 'package:flutter/material.dart';
import '../models/link_model.dart';
import '../models/folder_model.dart';
import '../utils/storage_helper.dart';
import '../widgets/folder_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Folder> folders = [];

  @override
  void initState() {
    super.initState();
    _loadFolders();
  }

  Future<void> _loadFolders() async {
    final data = await StorageHelper.getFoldersAndLinks();
    setState(() {
      folders = data['folders'] ?? [];
    });
  }

  Future<void> _createFolder() async {
    TextEditingController folderNameController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Create Folder'),
          content: TextField(
            controller: folderNameController,
            decoration: const InputDecoration(hintText: 'Folder Name'),
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text('Create'),
              onPressed: () {
                final folderName = folderNameController.text;
                if (folderName.isNotEmpty) {
                  final newFolder = Folder(name: folderName, links: []);
                  setState(() {
                    folders.add(newFolder);
                  });
                  StorageHelper.addFolder(newFolder);
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _createLink() async {
    TextEditingController titleController = TextEditingController();
    TextEditingController urlController = TextEditingController();
    String? selectedFolder;

    // Use StatefulBuilder to manage state inside the dialog independently
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Create Link'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton<String>(
                    hint: const Text('Select Folder'),
                    value: selectedFolder,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedFolder = newValue;
                      });
                    },
                    items: folders.map((folder) {
                      return DropdownMenuItem<String>(
                        value: folder.name,
                        child: Text(folder.name),
                      );
                    }).toList(),
                  ),
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(hintText: 'Link Title'),
                  ),
                  TextField(
                    controller: urlController,
                    decoration: const InputDecoration(hintText: 'Link URL'),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                TextButton(
                  child: const Text('Create'),
                  onPressed: () {
                    final title = titleController.text;
                    final url = urlController.text;
                    if (title.isNotEmpty && url.isNotEmpty && selectedFolder != null) {
                      final newLink = Link(
                        id: DateTime.now().toString(),
                        title: title,
                        url: url,
                      );

                      // Add the link to the selected folder and refresh the UI
                      StorageHelper.addLinkToFolder(selectedFolder!, newLink).then((_) {
                        _loadFolders(); // Reload folders to reflect the changes
                        Navigator.of(context).pop();
                      });
                    }
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Link-hub'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: folders.isEmpty
          ? const Center(child: Text('No folders added.'))
          : ListView.builder(
        itemCount: folders.length,
        itemBuilder: (context, index) {
          final folder = folders[index];
          return FolderTile(folder: folder);
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _createLink,
            heroTag: null,
            child: const Icon(Icons.link),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _createFolder,
            heroTag: null,
            child: const Icon(Icons.create_new_folder),
          ),
        ],
      ),
    );
  }
}
