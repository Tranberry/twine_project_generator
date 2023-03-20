void main(List<String> args) {
  if (args.length < 2) {
    print('Usage: generator <command> <projectName>');
    return;
  }

  var command = args[0];
  var projectName = args[1];

  switch (command) {
    case 'create':
      createProject(projectName);
      break;
    case 'delete':
      deleteProject(projectName);
      break;
    default:
      print('Unknown command: $command');
      break;
  }
}

void createProject(String projectName) {
  // TODO: Implement project creation logic
  print('Creating project $projectName...');
}

void deleteProject(String projectName) {
  // TODO: Implement project deletion logic
  print('Deleting project $projectName...');
}
