import 'dart:convert';
import 'dart:io';

import 'utils/print_path.dart';

/// Takes `data` and writes a valid JSON-file
void writeJsonFile(Map<String, dynamic> data, String pathAndFileName) {
  final jsonData = json.encode(data);
  final file = File(pathAndFileName);
  file.writeAsStringSync(jsonData);

  logActivity(file);
}
