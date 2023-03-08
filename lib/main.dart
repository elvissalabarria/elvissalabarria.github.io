import 'presentation/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await translator.init(
  //   localeType: LocalizationDefaultType.device,
  //   languagesList: <String>['data'],
  //   assetsDirectory: 'data/',
  // );

  runApp(
    // LocalizedApp(
    const App(),
  );
}
