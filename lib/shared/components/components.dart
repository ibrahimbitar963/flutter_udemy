import 'package:flutter/material.dart';

Widget DefaultButton({
     double width = double.infinity ,
     Color BackgroundColor = Colors.blue ,
    required VoidCallback function,
    required String text,
    required  BorderRadius radius,

}) =>
    Container(
  width:width,
     child: MaterialButton(

    onPressed: function,
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
      ),

    ),

  ),
     decoration: BoxDecoration(
      borderRadius: radius,
    color: BackgroundColor,

  ),
);


Widget defaultFormFiled({

  required TextEditingController controller,
  required TextInputType type,
   bool  isPassword = false ,
  required  IconData  prefix,
    IconData?  suffix,
  required String label, validator,
  required VoidCallback suffixpressed,




}
    ) =>   TextFormField(
  validator: validator,
  controller: controller,
  keyboardType: type,

  obscureText: isPassword,
 // onFieldSubmitted: onSubmit(),
  decoration: InputDecoration(
    suffixIcon: IconButton(
      onPressed: suffixpressed,
      icon: Icon(
        suffix
      ),
    ),
    labelText: label,
    prefixIcon: Icon(
      prefix
    ),
    border: OutlineInputBorder(
    ),
  ) ,
);