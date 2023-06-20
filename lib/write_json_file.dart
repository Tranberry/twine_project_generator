import 'dart:convert';
import 'dart:io';

import 'utils/print_path.dart';

/// Takes `data` and writes a valid JSON-file
void writeJsonFile(Map<String, dynamic> data, String pathAndFileName) {
  final jsonData = json.encode(data);
  final file = File(pathAndFileName);

  if (file.existsSync()) {
    logActivity('File already exists at path: $pathAndFileName');
  } else {
    file.writeAsStringSync(jsonData);
    logActivity(file);
  }
}
