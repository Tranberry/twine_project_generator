import 'dart:io';
import 'package:sc_project_generator/utils/print_path.dart';

/// Writes any basic file containing text (`.md`, `.html` etc)
void writeSimpleFile(String data, String pathAndFileName) {
  final fileData = data;
  final file = File(pathAndFileName);

  if (file.existsSync()) {
    print('File already exists at path: $pathAndFileName');
  } else {
    file.writeAsStringSync(fileData);
    logActivity(file);
  }
}
