import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_project/screens/notes_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(secondPage());
}

class secondPage extends StatelessWidget {
  static final String title = 'Notes SQLite';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
    ),
    home: NotesPage(),
  );
}