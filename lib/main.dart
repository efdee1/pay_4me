import 'package:flutter/material.dart';
import 'package:pay_4_me/route.dart';

import 'UI/view/home.dart';


void main()  {

    runApp( const MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pay4Me',
      theme: ThemeData(),
      routes: routes,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const Home());
      },
    );
  }
}
