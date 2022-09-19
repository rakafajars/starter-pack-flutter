import 'package:flutter/material.dart';

import 'presentation/pages/my_home_page.dart';
import 'locator.dart' as di;

Future<void> mainCommon() async {
  await di.init();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
