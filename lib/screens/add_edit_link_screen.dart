import 'package:flutter/material.dart';
import '../models/link_model.dart';
import '../models/folder_model.dart';
import '../utils/storage_helper.dart';

class AddEditLinkScreen extends StatefulWidget {
  final Folder? folder; // Optional folder argument

  const AddEditLinkScreen({super.key, this.folder});

  @override
  _AddEditLinkScreenState createState() => _AddEditLinkScreenState();
}

class _AddEditLinkScreenState extends State<AddEditLinkScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _url = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add / Edit Link'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
                onSaved: (value) => _title = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'URL'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a URL';
                  }
                  return null;
                },
                onSaved: (value) => _url = value!,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _saveLink();
                  }
                },
                child: const Text('Save Link'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _saveLink() async {
    final newLink = Link(id: DateTime.now().toString(), title: _title, url: _url);

    if (widget.folder != null) {
      // If a folder is passed, add the link to the folder
      await StorageHelper.addLinkToFolder(widget.folder!.name, newLink);
    } else {
      // Otherwise, add it to top-level links
      await StorageHelper.addLink(newLink);
    }

    // Navigate back to the previous screen
    Navigator.pop(context, newLink);
  }
}
