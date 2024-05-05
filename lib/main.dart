import 'dart:async';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:crowd_math/flavors.dart';
import 'app.dart';
import 'package:crowd_math/gen/firebase_options_dev.dart' as dev;
import 'package:crowd_math/gen/firebase_options_prod.dart' as prod;
import 'package:firebase_core/firebase_core.dart';

FutureOr<void> main() async {
  final flavor = F.appFlavor!;
  final options = (flavor == Flavor.dev)
      ? dev.DefaultFirebaseOptions.currentPlatform
      : prod.DefaultFirebaseOptions.currentPlatform;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: options);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  runApp(const App());
}
