import 'package:flutter/material.dart';
import 'package:mylogin/pages/loginpage.dart';

import 'package:mylogin/pages/registerpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LOIN&REGISTER FLUTTER',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => Loginpage(),
        '/register': (context) => Registerpage(),
        
      },
    );
  }
}
