import 'dart:io';

/// For printing what the generator creates: `added: path/to/file.tw`
void logActivity<T>(T input) {
  if (input is Directory) {
    final directory = input;
    print('added: ${directory.path}');
  } else if (input is File) {
    final file = input;
    print('added: ${file.path}');
  } else {
    throw ArgumentError('Invalid input type. Expected Directory or File.');
  }
}
