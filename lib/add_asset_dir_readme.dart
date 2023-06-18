import 'dart:io';
import 'package:sc_project_generator/print_path.dart';

import 'write_markdown_file.dart';

Future<void> addAssetDirReadme(Directory distAssetDir) async {
  var assetDir = await Directory(distAssetDir.path).create(recursive: true);
  printPath(assetDir);

  var data = '# Add your images, audio, fonts and other media files here';

  var pathAndFileName = '${assetDir.path}/readme.md';

  writeMarkdownFile(data, pathAndFileName);
}
