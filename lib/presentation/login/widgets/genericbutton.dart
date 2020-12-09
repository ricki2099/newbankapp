import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {  
  GenericButton({this.onTap, this.child, this.backgroundColor});
  final Widget child;
  final VoidCallback onTap;
  final Color backgroundColor;

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
        color: backgroundColor,
        onPressed: onTap,
        child: Center(
          child: Container(        
            height: 24,
            child: Center(
              child: child
            ),
          ),
        ),
      ),
    );
  }
}