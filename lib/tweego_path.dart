import 'dart:io';

bool isTweegoInPath() {
  if (Platform.isWindows) {
    var result = Process.runSync('where', ['tweego.exe']);
    return result.exitCode == 0;
  } else {
    var result = Process.runSync('which', ['tweego']);
    return result.exitCode == 0;
  }
}
