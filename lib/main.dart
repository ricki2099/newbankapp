import 'package:bankapp/presentation/login/login_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(BankApp());
 
class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LoginPage()
    );
  }
}