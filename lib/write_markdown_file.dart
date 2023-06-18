import 'dart:io';
import 'package:sc_project_generator/print_path.dart';

void writeMarkdownFile(String data, String pathAndFileName) {
  final fileData = data;
  final file = File(pathAndFileName);
  file.writeAsStringSync(fileData);

  printPath(file);
}
