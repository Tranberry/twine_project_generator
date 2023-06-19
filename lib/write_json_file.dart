import 'dart:convert';
import 'dart:io';

import 'utils/print_path.dart';

// var data = {
//   'recommendations': ['cyrusfirheir.twee3-language-tools']
// };

void writeJsonFile(Map<String, dynamic> data, String pathAndFileName) {
  final jsonData = json.encode(data);
  final file = File(pathAndFileName);
  file.writeAsStringSync(jsonData);

  logActivity(file);
}
