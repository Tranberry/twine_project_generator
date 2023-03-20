import 'dart:convert';
import 'dart:io';

// var data = {
//   'recommendations': ['cyrusfirheir.twee3-language-tools']
// };
var pathFileName = File('recommendations.json');

void writeJsonFile(Map<String, dynamic> data, String pathAndFileName) {
  final jsonData = json.encode(data);
  final file = File(pathAndFileName);
  file.writeAsStringSync(jsonData);

  print(file.path);
}
