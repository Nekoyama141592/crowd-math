import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
   await runZonedGuarded(() async {
    F.appFlavor = Flavor.prod;
    await dotenv.load(fileName: 'prod.env');
    // Dartのエラーを報告
    await runner.main();
  }, (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack);
  });
  
}
