import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

/// Generates a random IFID string
String ifid() {
  var uuid = Uuid();

  return uuid.v4().toUpperCase();
}
