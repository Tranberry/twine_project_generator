import 'package:dcli/dcli.dart';

void main() {
  // Use the global DCli Settings to enable debug output.
  // Settings().setVerbose(enabled: true);

  // Print the current working directory
  print('PWD: $pwd');

  // Create a directory and if necessary
  // its parent directories.
  var pathToImages = 'tools/images';
  createDir(pathToImages, recursive: true);

  var pathToGoodJpg = join(pathToImages, 'good.jpg');
  // create a file (its empty)
  touch(pathToGoodJpg, create: true);

  // update the last modified time on an existing file
  touch(pathToGoodJpg);

  print('Showing all files');

  // print out all files in the current directory.
  // [file] is just a [String]
  find('*.*', recursive: false).forEach((file) => print(file));

  // take a nap for a couple of seconds.
  sleep(2);

  print('Find file matching *.jpg');
  // Find all files that end with .jpg
  // in the current directory and any subdirectories
  for (var file in find('*.jpg', workingDirectory: pathToImages).toList()) {
    print(file);
  }

  var pathToBadJpg = join(pathToImages, 'bad.jpg');
  // Move/rename a file
  move(pathToGoodJpg, pathToBadJpg);

  // check if a file exists.
  if (exists(pathToBadJpg)) {
    print('bad.jpg exists');
  }

  // Delete a file asking the user first.
  delete(pathToBadJpg, ask: true);
}
