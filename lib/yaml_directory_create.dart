import 'dart:io';
import 'package:yaml/yaml.dart';

void main() {
  createDirectoryStructure(variant: 1);
}

void createDirectoryStructure({int variant = 0}) {
  final file = File('config/structure.yaml');
  final yamlString = file.readAsStringSync();
  final doc = loadYaml(yamlString);

  final directoryNames = Map<String, String>.from(doc['directory-names']);

  directoryNames.forEach((key, value) {
    print(key);
    print(value);
  });

  final YamlList structure = doc['structures'][variant]['root'];
  print('hello: ${structure.runtimeType}');
  // createSubDirectory(structure, directoryNames);
}

void createSubDirectory(dynamic input, Map<String, String> directoryNames,
    {String currentDirectory = ''}) {
  if (input is String) {
    final newDirectory = directoryNames[input] ?? input;
    final dir = Directory('$currentDirectory/$newDirectory');
    dir.createSync();
  } else if (input is Map<String, dynamic>) {
    input.forEach((key, value) {
      final newDirectory = directoryNames[key] ?? key;
      final dir = Directory('$currentDirectory/$newDirectory');
      dir.createSync();
      createSubDirectory(value, directoryNames,
          currentDirectory: dir.path.toString());
    });
  } else if (input is List<dynamic>) {
    for (var element in input) {
      createSubDirectory(element, directoryNames,
          currentDirectory: currentDirectory);
    }
  }
}
