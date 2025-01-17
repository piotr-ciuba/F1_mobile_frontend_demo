import 'package:f1_mobile_frontend_demo/core/utils/dependency_injection/injector.dart';
import 'package:f1_mobile_frontend_demo/view/pages/f1_details_page.dart';
import 'package:flutter/material.dart';

void main() {
  injectorSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: F1DetailsPage(),
    );
  }
}
