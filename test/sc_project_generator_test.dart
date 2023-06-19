import 'package:sc_project_generator/utils/print_path.dart';
import 'package:test/test.dart';
import 'dart:io';

void main() {
  group('logActivity', () {
    test('logs directory path when input is a Directory', () {
      final directory = Directory('path/to/directory');
      expect(
          () => logActivity(directory), prints('added: path/to/directory\n'));
    });

    test('logs file path when input is a File', () {
      final file = File('path/to/file.txt');
      expect(() => logActivity(file), prints('added: path/to/file.txt\n'));
    });

    test('throws ArgumentError for invalid input type', () {
      final invalidInput = 'not a Directory or File';
      expect(() => logActivity(invalidInput), throwsArgumentError);
    });
  });
}
