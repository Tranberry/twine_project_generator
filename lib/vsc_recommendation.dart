import 'dart:io';
import 'package:sc_project_generator/make_directories.dart';
import 'package:sc_project_generator/write_json_file.dart';

import 'print_path.dart';

Future<void> addVSCRecommendation(String projectPath) async {
  var vsCodeDir =
      await Directory('$projectPath/.vscode').create(recursive: true);
  printPath(vsCodeDir);

  // Write the file/s
  var data = {
    'recommendations': ['cyrusfirheir.twee3-language-tools']
  };
  var pathAndFileName = '${vsCodeDir.path}/recommendations.json';

  writeJsonFile(data, pathAndFileName);
}
