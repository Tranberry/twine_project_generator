import 'dart:io';

import 'package:sc_project_generator/_globals.dart';
import 'package:sc_project_generator/no_args_guide.dart';
import 'package:sc_project_generator/tweego_path.dart';
import 'package:sc_project_generator/vscode_installed.dart';
import 'package:sc_project_generator/write_json_file.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    noArgumentsGuide();
    // if no arguments supplied: exit (return).
    return;
  }

  // if (isTweegoInPATH()) {
  //   print('Tweego is in path');
  //   print('');
  // } else {
  //   print('Tweego is not in path');
  //   // TODO: query about local tweego or give DL-link?
  // }

  String projectName =
      arguments[0].trim().replaceAll(' ', '_').replaceAll(RegExp(r'[^\w]'), '');
  if (projectName.isEmpty) {
    print('Project name must not be empty.');
    return;
  }

  String flag;

  if (arguments.length == 2) {
    flag = arguments[1];
    if (flag == '--q' || flag == '--Q') {
      print('');
      print('creating your quick/test $projectName');
      print('');
    } else {
      print('');
      print(
          'you may not have spaces in your project name and/or your flag should be "--Q" or "--T"');
      print('');
    }
  } else {
    print('');
    print('Creating your $projectName with all the bells and whistles');
    print('');
  }

  makeDirectories(projectName);
}

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
