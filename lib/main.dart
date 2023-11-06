import 'package:bme/upi.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Upi.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: GlucosePredictionPage(),
    );
  }
}
