import 'dart:convert';
import 'dart:io';

final data = {
  'version': '2.0.0',
  'tasks': [
    {
      'label': 'Build and Watch Src, Story, Style folders',
      'type': 'shell',
      'command': 'tweego',
      'group': {'kind': 'build', 'isDefault': true},
      'args': [
        'Src',
        'Story',
        'Style',
        '-o',
        'Output/\${workspaceFolderBasename}.html',
        '-w'
      ],
      'options': {'cwd': '\${workspaceFolder}'},
      'problemMatcher': [],
      'presentation': {
        'echo': true,
        'reveal': 'always',
        'focus': true,
        'panel': 'new',
        'clear': true
      }
    }
  ]
};

final Map<String, dynamic> dataMap = Map<String, dynamic>.from(data);

void writeJsonToFile(Map<String, dynamic> data, String filePath) {
  final jsonString = json.encode(data);
  final file = File(filePath);
  file.writeAsStringSync(jsonString);
}
