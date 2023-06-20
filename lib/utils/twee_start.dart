import 'dart:io';

import 'package:sc_project_generator/_globals.dart';
import 'package:sc_project_generator/utils/print_path.dart';
import 'package:sc_project_generator/write_file.dart';

/// Writes the minimum needed twee file
Future<void> writeTweeStart(Directory tweeDir, String projectName) async {
  var srcTweeDir = await Directory(tweeDir.path).create(recursive: true);
  logActivity(tweeDir);

  var data = '''
:: StoryData
{
  "ifid": "$projectIFID",
  "format": "$storyFormat"
}

:: Start
The starting passage

:: StoryTitle
${projectName.replaceAll('_', ' ')}
''';

  var pathAndFileName = '${srcTweeDir.path}/start.tw';

  writeSimpleFile(data, pathAndFileName);
}
