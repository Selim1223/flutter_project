import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_project/screens/countdown_screen.dart';
import 'package:flutter_project/screens/thirdPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(secondPage());
}

class secondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
    ),
    home: CountdownPage(),
  );
}