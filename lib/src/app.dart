import 'package:flutter/material.dart';

import 'screens/application_form_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('CV Application form'),
        ),
        body: ApplicationFromScreen(),
      ),
    );
  }
}