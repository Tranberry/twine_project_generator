import 'dart:io';

bool gotLiveServer() {
  if (Platform.isWindows) {
    var result = Process.runSync('where', ['live-server']);
    return result.exitCode == 0;
  } else {
    var result = Process.runSync('which', ['live-server']);
    return result.exitCode == 0;
  }
}
