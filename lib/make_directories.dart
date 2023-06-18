import 'dart:io';

import 'package:sc_project_generator/vscode_installed.dart';

import '_globals.dart';
import 'add_asset_dir_readme.dart';
import 'print_path.dart';
import 'vsc_recommendation.dart';

Future<void> makeDirectories(String rootDirectory) async {
  var projectPath = testRoot + rootDirectory;
  // TODO: add different choices for folder structure

  // Source directories
  var sourceDir = await Directory('$projectPath/src').create(recursive: true);
  printPath(sourceDir);

  var stylesDir =
      await Directory('${sourceDir.path}/styles').create(recursive: true);
  printPath(stylesDir);

  var javascriptDir =
      await Directory('${sourceDir.path}/javascript').create(recursive: true);
  printPath(javascriptDir);

  var tweeDir =
      await Directory('${sourceDir.path}/twee').create(recursive: true);
  printPath(tweeDir);

  // add Distribution directories
  var distributionDir =
      await Directory('$projectPath/dist').create(recursive: true);
  printPath(distributionDir);

  var distAssetDir =
      await Directory('${distributionDir.path}/assets').create(recursive: true);
  printPath(distAssetDir);

  await addAssetDirReadme(distAssetDir);

  // if VS Code is installed prepare to add recommended extensions folder and file.
  if (isVSCodeInstalled()) await addVSCRecommendation(projectPath);
}
