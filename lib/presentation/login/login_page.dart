import 'package:bankapp/presentation/login/widgets/bank_app_bar.dart';
import 'package:bankapp/presentation/login/widgets/genericbutton.dart';
import 'package:bankapp/presentation/login/widgets/social_login_widget.dart';
import 'package:bankapp/presentation/widgets/custon_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BankAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Login"),
            SocialLoginWidget(),
            CustomTextField(hint: "Username", validator:(value){
              if (value.length > 0) {
                return true;
              }
            }),
            CustomTextField(hint: "Username", obscuredText: true, validator:(value){
              if (value.length > 5) {
                return true;
              }
            }),
            Container(
              width: MediaQuery.of(context).size.width * 0.92,
              child: GenericButton(
                onTap: (){},
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color(0XFF064FC8),
              ),
            ),
            RichText(
              text: TextSpan(
                text: "Don't have a account? ",
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                    ..onTap=(){
                      print('Hello world');
                    }
                  ),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}