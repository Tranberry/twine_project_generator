import 'dart:io';

/// Tries to find GIT in `path`
bool isGitInPath() {
  if (Platform.isWindows) {
    var result = Process.runSync('where', ['git.exe']);
    return result.exitCode == 0;
  } else {
    var result = Process.runSync('which', ['git']);
    return result.exitCode == 0;
  }
}
