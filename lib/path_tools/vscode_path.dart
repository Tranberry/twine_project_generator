import 'dart:io';

/// Check if Visual Studio Code is in 'path'
bool isCodeInPath() {
  if (Platform.isWindows) {
    var code = Process.runSync('where', ['code.cmd']);
    var insiders = Process.runSync('where', ['code-insiders.cmd']);
    return code.exitCode == 0 || insiders.exitCode == 0;
  } else {
    var code = Process.runSync('which', ['code']);
    var insiders = Process.runSync('which', ['code-insiders']);
    return code.exitCode == 0 || insiders.exitCode == 0;
  }
}
