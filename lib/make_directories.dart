import 'dart:io';

import 'package:sc_project_generator/vscode_installed.dart';

import '_globals.dart';
import 'vsc_recommendation.dart';

Future<void> makeDirectories(String rootDirectory) async {
  var projectPath = testRoot + rootDirectory;
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

  await addAssetDirReadme(distAssetDir);

  // if VS Code is installed prepare to add recommended extensions folder and file.
  if (isVSCodeInstalled()) await addVSCRecommendation(projectPath);
}

Future<void> addAssetDirReadme(Directory distAssetDir) async {
  var assetDir = await Directory(distAssetDir.path).create(recursive: true);
  print(assetDir.path);

  var data = '# Add your images, audio, fonts and other media files here';

  var pathAndFileName = '${assetDir.path}/readme.md';

  writeMarkdownFile(data, pathAndFileName);
}

void writeMarkdownFile(String data, String pathAndFileName) {
  final fileData = data;
  final file = File(pathAndFileName);
  file.writeAsStringSync(fileData);

  print(file.path);
}
