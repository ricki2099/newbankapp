import 'package:bankapp/presentation/widgets/bank_logo.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFF064FC8),
      child: Center(
        child: Container(          
          width: MediaQuery.of(context).size.width / 2,
          child: BankLogo(),
        ),
      ),
    );
  }
}