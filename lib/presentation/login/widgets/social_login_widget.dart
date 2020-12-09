import 'package:bankapp/presentation/login/widgets/genericbutton.dart';
import 'package:flutter/material.dart';

class SocialLoginWidget extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GenericButton(
          onTap: (){},
          child: Image.asset('assets/images/f.png')
        ),
        GenericButton(
          onTap: (){},
          child: Image.asset('assets/images/g.png')
        ),
      ],
    );
  }
}