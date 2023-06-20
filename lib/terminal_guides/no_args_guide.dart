import '../_globals.dart';
import '../path_tools/tweego_path.dart';
import '../path_tools/vscode_path.dart';

/// Prints a use guide to the terminal
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

  // TODO: is this the place to do this?
  if (isTweegoInPath()) {
    print('Tweego - is in path');
  } else {
    print('Tweego - is not in path');
    // TODO: query about local tweego or give DL-link?
  }
  if (isCodeInPath()) {
    print('VS Code - is in path(installed)');
  } else {
    print('VS Code - is not in path(installed)');
  }
}
