import 'package:sc_project_generator/make_directories.dart';
import 'package:sc_project_generator/no_args_guide.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    noArgumentsGuide();
    // if no arguments supplied: exit (return).
    return;
  }

  // if (isTweegoInPATH()) {
  //   print('Tweego is in path');
  //   print('');
  // } else {
  //   print('Tweego is not in path');
  //   // TODO: query about local tweego or give DL-link?
  // }

  String projectName =
      arguments[0].trim().replaceAll(' ', '_').replaceAll(RegExp(r'[^\w]'), '');
  if (projectName.isEmpty) {
    print('Project name must not be empty.');
    return;
  }

  String flag;

  if (arguments.length == 2) {
    flag = arguments[1];
    if (flag == '--q' || flag == '--Q') {
      print('');
      print('creating your quick/test $projectName');
      print('');
    } else {
      print('');
      print(
          'you may not have spaces in your project name and/or your flag should be "--Q" or "--T"');
      print('');
    }
  } else {
    print('');
    print('Creating your $projectName with all the bells and whistles');
    print('');
  }

  makeDirectories(projectName);
}
