import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {  
  GenericButton({this.onTap, this.child});
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width * 0.44,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Color(0XFFCDD2DB),
          )
        ),
        color: Colors.white,
        onPressed: onTap,
        child: Container(        
          height: 24,
          child: child
        ),
      ),
    );
  }
}