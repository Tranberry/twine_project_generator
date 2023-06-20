import 'dart:io';

/// Check if TWEEGO is in 'path'
bool isTweegoInPath() {
  if (Platform.isWindows) {
    var result = Process.runSync('where', ['tweego.exe']);
    return result.exitCode == 0;
  } else {
    var result = Process.runSync('which', ['tweego']);
    return result.exitCode == 0;
  }
}
