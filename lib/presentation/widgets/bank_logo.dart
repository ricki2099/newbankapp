import 'package:flutter/material.dart';

class BankLogo extends StatelessWidget {
  const BankLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains){
        return Container(
          width: constrains.maxWidth,
          height: constrains.maxHeight,
          child: AspectRatio(
            aspectRatio: 2,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
            ),
          ),
        );
      }
    );
  }
}