import 'dart:io';

void printPath(dynamic input) {
  if (input is Directory) {
    print('added: ${input.path}');
  } else if (input is File) {
    print('added: ${input.path}');
  } else {
    throw ArgumentError('Invalid input type. Expected Directory or File.');
  }
}
