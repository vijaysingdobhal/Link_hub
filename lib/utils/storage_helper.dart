import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/folder_model.dart';
import '../models/link_model.dart';

class StorageHelper {
  static const String _foldersKey = 'folders';
  static const String _topLevelLinksKey = 'topLevelLinks';

  // Get folders and top-level links from storage
  static Future<Map<String, dynamic>> getFoldersAndLinks() async {
    final prefs = await SharedPreferences.getInstance();

    // Fetch folders
    final String? foldersJson = prefs.getString(_foldersKey);
    final List<Folder> folders = foldersJson != null
        ? (json.decode(foldersJson) as List).map((e) => Folder.fromJson(e)).toList()
        : [];

    // Fetch top-level links
    final String? linksJson = prefs.getString(_topLevelLinksKey);
    final List<Link> topLevelLinks = linksJson != null
        ? (json.decode(linksJson) as List).map((e) => Link.fromJson(e)).toList()
        : [];

    return {
      'folders': folders,
      'topLevelLinks': topLevelLinks,
    };
  }

  // Save folders to storage
  static Future<void> saveFolders(List<Folder> folders) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      _foldersKey,
      json.encode(folders.map((folder) => folder.toJson()).toList()),
    );
  }

  // Save top-level links to storage
  static Future<void> saveTopLevelLinks(List<Link> links) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      _topLevelLinksKey,
      json.encode(links.map((link) => link.toJson()).toList()),
    );
  }

  // Add a link to top-level
  static Future<void> addLink(Link link) async {
    final data = await getFoldersAndLinks();
    final List<Link> topLevelLinks = data['topLevelLinks'] ?? [];
    topLevelLinks.add(link);
    await saveTopLevelLinks(topLevelLinks);
  }

  // Add a link to a specific folder
  static Future<void> addLinkToFolder(String folderName, Link link) async {
    final data = await getFoldersAndLinks();
    final List<Folder> folders = data['folders'];

    try {
      // Find the folder and add the link
      final folder = folders.firstWhere((folder) => folder.name == folderName);
      folder.links.add(link);

      // Save the updated folders list
      await saveFolders(folders);
    } catch (e) {
      // Handle case where folder is not found
      print('Error: Folder not found - $folderName');
      // You can show a message to the user if needed
    }
  }

  // Add a new folder
  static Future<void> addFolder(Folder folder) async {
    final data = await getFoldersAndLinks();
    final List<Folder> folders = data['folders'];
    folders.add(folder);
    await saveFolders(folders);
  }
}
