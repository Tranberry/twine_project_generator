import 'dart:io';

import 'package:sc_project_generator/utils/twee_start.dart';

import '_globals.dart';
import 'utils/write_asset_dir_note.dart';
import 'utils/print_path.dart';
import 'utils/vsc_recommendation.dart';
import 'path_tools/vscode_path.dart';

/// Manages what should be added
Future<void> makeDirectories(String rootDirectory) async {
  var projectPath = testRoot + rootDirectory;
  // TODO: add different choices for folder structure

  // Source directories
  var sourceDir = await Directory('$projectPath/src').create(recursive: true);
  logActivity(sourceDir);

  var stylesDir =
      await Directory('${sourceDir.path}/styles').create(recursive: true);
  logActivity(stylesDir);

  var javascriptDir =
      await Directory('${sourceDir.path}/javascript').create(recursive: true);
  logActivity(javascriptDir);

  var tweeDir =
      await Directory('${sourceDir.path}/twee').create(recursive: true);
  logActivity(tweeDir);

  await writeTweeStart(tweeDir, rootDirectory);

  // add Distribution directories
  var distributionDir =
      await Directory('$projectPath/dist').create(recursive: true);
  logActivity(distributionDir);

  var distAssetDir =
      await Directory('${distributionDir.path}/assets').create(recursive: true);
  logActivity(distAssetDir);

  await writeAssetDirNote(distAssetDir);

  // if VS Code is installed prepare to add recommended extensions folder and file.
  if (isCodeInPath()) await addVSCRecommendation(projectPath);
}
