// FIXME: ignore live-server if not there
final taskData = {
  // See https://go.microsoft.com/fwlink/?LinkId=733558
  // for the documentation about the tasks.json format
  // made by TRBRY
  // thanks Greyelf :3 & Gwen(tastic)
  'version': '2.0.0',
  'tasks': [
    {
      'label': 'Build and Serve',
      'dependsOn': [
        'tweego-watch ./src -o ./dist/*.html -w',
        'live-server ./dist'
      ],
      'dependsOrder': 'parallel',
      'group': 'build',
      'isBackground': true
    },
    {
      'label': 'tweego-watch ./src -o ./dist/*.html -w',
      'type': 'shell',
      'command': 'tweego',
      'args': ['src', '-o', 'dist/\${workspaceFolderBasename}.html', '-w'],
      'options': {'cwd': '\${workspaceFolder}'},
      'problemMatcher': [],
      'presentation': {'group': 'tester'}
    },
    {
      'label': 'live-server ./dist',
      'type': 'shell',
      'command': 'live-server',
      'args': ['./dist/'],
      'problemMatcher': [],
      'presentation': {'group': 'tester'}
    }
  ]
};

final Map<String, dynamic> dataMap = Map<String, dynamic>.from(taskData);
