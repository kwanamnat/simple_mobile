import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_mobile/pages/login_page.dart';
import 'package:simple_mobile/pages/my_home_state_page.dart';
import 'package:simple_mobile/pages/register_page.dart';
import 'package:simple_mobile/widgets/my_counter.dart';
import 'package:simple_mobile/widgets/my_river_page.dart';

import 'pages/ny_home_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      // home: LoginPage(),
      routes: {
        '/':(context) => LoginPage(),
        // refister page
        '/register' :(context) => RegisterPage(),
        
      },
    );
  }
}
