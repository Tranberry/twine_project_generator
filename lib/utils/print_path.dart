import 'dart:io';

/// For printing what the generator creates: `added: path/to/file.tw`
void logActivity<T>(T input) {
  final timestamp = '${DateTime.now().hour}:${DateTime.now().minute}';
  if (input is Directory) {
    final directory = input;
    print('$timestamp added: ${directory.path}');
  } else if (input is File) {
    final file = input;
    print('$timestamp added: ${file.path}');
  } else if (input is String) {
    print('$timestamp info: $input');
  } else {
    throw ArgumentError(
        '$timestamp - Invalid input type. Expected Directory or File.');
  }
}
