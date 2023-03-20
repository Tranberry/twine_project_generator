import 'dart:io';

import 'package:sc_project_generator/vscode_installed.dart';
import 'package:sc_project_generator/write_json_file.dart';

import '_globals.dart';

Future<void> makeDirectories(String rootDirectory) async {
  var projectPath = '$testRoot$rootDirectory';
  // TODO: add different choices for folder structure

  // Source directories
  var sourceDir = await Directory('$projectPath/src').create(recursive: true);
  print(sourceDir.path);

  var stylesDir =
      await Directory('${sourceDir.path}/styles').create(recursive: true);
  print(stylesDir.path);

  var javascriptDir =
      await Directory('${sourceDir.path}/javascript').create(recursive: true);
  print(javascriptDir.path);

  var tweeDir =
      await Directory('${sourceDir.path}/twee').create(recursive: true);
  print(tweeDir.path);

  // add Distribution directories
  var distributionDir =
      await Directory('$projectPath/dist').create(recursive: true);
  print(distributionDir.path);

  var distAssetDir =
      await Directory('${distributionDir.path}/assets').create(recursive: true);
  print(distAssetDir.path);

  // if VS Code is installed prepare to add recommended extensions folder and file.
  if (isVSCodeInstalled()) {
    var vsCodeDir =
        await Directory('$projectPath/.vscode').create(recursive: true);
    print(vsCodeDir.path);

    // Write the file/s
    var data = {
      'recommendations': ['cyrusfirheir.twee3-language-tools']
    };
    var pathAndFileName = '${vsCodeDir.path}/recommendations.json';

    writeJsonFile(data, pathAndFileName);
  }
}
