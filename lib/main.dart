import 'package:flutter/material.dart';
import 'package:proyectlicorteca/Screen/login_screen.dart';

void main() {
  runApp(const MyLicorteca());
}

class MyLicorteca extends StatelessWidget {
  const MyLicorteca({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {'login': (context) => const LoginScreen()},
    );
  }
}
