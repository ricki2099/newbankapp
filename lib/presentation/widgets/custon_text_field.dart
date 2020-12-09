import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

typedef Validator = Function(String text);

class CustomTextField extends StatelessWidget {  
  final String hint;
  final bool obscuredText;
  final Validator validator;
  final bool initialStatus;
  CustomTextField({
    this.hint, 
    this.obscuredText = false, 
    this.validator, 
    this.initialStatus=false
  }) : assert(obscuredText != null);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StatusChangeNotifier>(
      create: (_) => StatusChangeNotifier(initialStatus: initialStatus),
      child: _ChildTextField(
        hint: hint, 
        obscuredText: obscuredText,
        validator: validator,
      ),
    );
  }
}


class _ChildTextField extends StatelessWidget {

  final String hint;
  final bool obscuredText;
  final Validator validator;

 _ChildTextField({
    this.hint, 
    this.obscuredText = false, 
    this.validator,     
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<StatusChangeNotifier>(
      builder: (_, value,__){
        print(value.status);
        return TextField(
          obscureText: obscuredText,
          onChanged: (value){
            final result = validator?.call(value) ?? false;
            Provider.of<StatusChangeNotifier>(context, listen: false).updateStatus(result);
            //forma corta
            //context.read<StatusChangeNotifier>().updateStatus(result);
          },
          decoration: InputDecoration(
            suffixIcon: value.status ? Icon(
              Icons.check_circle,
              color: Colors.green,
            ) : SizedBox.shrink(),
            labelText: hint,
            labelStyle: TextStyle(
              color: Colors.grey
            ),
            enabledBorder: UnderlineInputBorder(      
              borderSide: BorderSide(color: Color(0XFF918FA3), width: 2),   
            ),  
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 2),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 2),
            ),
          ),
          cursorColor: Color(0XFFCDD2DB),
        );
      },
    );
  }
}

class StatusChangeNotifier extends ChangeNotifier{

  bool _status  = false;

  StatusChangeNotifier({initialStatus = false}) : _status = initialStatus;
  bool get status => _status;

  void updateStatus(bool status){
    this._status = status;
    notifyListeners();
  }

}