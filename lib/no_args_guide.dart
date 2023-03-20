import '_globals.dart';

/// Prints a small use guide to the terminal
void noArgumentsGuide() {
  print('');
  print('Usage: $generatorName <project_name> <flag>');
  print('');
  print('Flags:');
  print('  --Q or --T'
      '    Quick/Test mode, generate a simple project without user input');
  // print('  --h' + '    Add the Harlowe story format to the project');
  // print('  --c' + '    Add the Chapbook story format to the project');
  print('');
  print('Example: without a flag:');
  print('$generatorName new_project');
  print('');
  print('Example: with a flag:');
  print('$generatorName test_project --Q');
  print('');
}
