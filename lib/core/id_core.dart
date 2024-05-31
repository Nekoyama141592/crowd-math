import 'package:uuid/uuid.dart';

class IdCore {
  static String uuidV4() {
    const uuid = Uuid();
    return uuid.v4();
  }
}
