import 'package:sc_project_generator/_globals.dart';
import 'package:sc_project_generator/make_directories.dart';
import 'package:sc_project_generator/terminal_guides/no_args_guide.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    noArgumentsGuide();
    // If no arguments supplied: exit (return).
    return;
  }

  List<String> flags = [];
  List<String> projectNameParts = [];

  for (String argument in arguments) {
    if (argument.startsWith('--')) {
      flags.add(argument);
    } else {
      projectNameParts.add(argument);
    }
  }

  if (projectNameParts.isEmpty) {
    print('Project name must not be empty.');
    return;
  }

  String projectName =
      projectNameParts.join('_').trim().replaceAll(RegExp(r'[^\w]'), '');

  if (flags.contains('--q')) {
    // StoryFormat should default to the config 😱
    storyFormat = 'SugarCube';
    print('');
    print('Creating your quick/test $projectName - $storyFormat');
    print('');
  } else {
    // FIXME: ask for Storyformat
    print('');
    print('Creating your $projectName with all the bells and whistles');
    print('');
  }

  makeDirectories(projectName);
}
