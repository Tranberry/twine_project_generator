import 'package:dcli/dcli.dart';

void createDirectory(dynamic yamlList, List<dynamic> directories,
    [String parent = '']) {
  // add logic twine games #off-topic
  for (var directory in directories) {
    final name = directory['name'] as String;
    touch(parent + name, create: true);
  }
}
