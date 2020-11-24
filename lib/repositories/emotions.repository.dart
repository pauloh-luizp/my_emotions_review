import 'dart:convert';
import 'dart:io';
import 'package:my_emotions_review/models/emotions.model.dart';
import 'package:path_provider/path_provider.dart';

class EmotionsRepository {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/data.json');
  }

  Future<List<Emotions>> readData() async {
    try {
      final file = await _localFile;
      // Read the file
      String dataJson = await file.readAsString();

      List<Emotions> data = (json.decode(dataJson) as List)
          .map((i) => Emotions.fromJson(i))
          .toList();
      return data;
    } catch (e) {
      return List<Emotions>();
    }
  }

  Future<bool> saveData(List<Emotions> list) async {
    try {
      final file = await _localFile;
      final String data = json.encode(list);
      // Write the file
      file.writeAsString(data);
      return true;
    } catch (e) {
      return false;
    }
  }
}
