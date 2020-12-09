import 'package:flutter/material.dart';

class BankAppBar extends StatelessWidget with PreferredSizeWidget {  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 28);
}