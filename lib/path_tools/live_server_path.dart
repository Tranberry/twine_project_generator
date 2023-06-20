import 'dart:io';

/// Check if live-server is in 'path' (might be flaky)
bool isLiveServerInPath() {
  if (Platform.isWindows) {
    var result = Process.runSync('where', ['live-server']);
    return result.exitCode == 0;
  } else {
    var result = Process.runSync('which', ['live-server']);
    return result.exitCode == 0;
  }
}
