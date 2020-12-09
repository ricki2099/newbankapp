import 'package:bankapp/presentation/login/widgets/bank_app_bar.dart';
import 'package:bankapp/presentation/login/widgets/social_login_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BankAppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Login"),
            SocialLoginWidget(),
            // CustomTextField(hint: "Username"),
            // CustomTextField(hint: "Username", obscured: true),
          ],
        ),
      ),
    );
  }
}