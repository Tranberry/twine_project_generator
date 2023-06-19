import 'dart:io';
import 'package:yaml/yaml.dart';

void main(List<String> args) {
  final yamlFile = File('config/alternative_structure.yaml');
  if (!yamlFile.existsSync()) {
    print('YAML config file not found');
    return;
  }
  final yamlString = yamlFile.readAsStringSync();
  final yamlList = loadYaml(yamlString);

  for (final directories in yamlList) {
    if (directories.containsKey('directories')) {
      printDirectories(directories['directories']);
    }
  }
}

void printDirectories(List<dynamic> directories, [String prefix = '']) {
  for (var directory in directories) {
    final name = directory['name'] as String;
    print('$prefix$name');

    // print('hello: $prefix');

    final subdirectories = directory['subdirectories'] as List<dynamic>?;
    if (subdirectories != null) {
      printDirectories(subdirectories, '$prefix ⨽ ');
    }
  }
}
