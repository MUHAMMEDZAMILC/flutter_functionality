import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  AppButton({super.key, this.bheight, 
  this.bwidth, 
  this.text, 
  this.textStyle,
  this.bgcolor,
  this.borderRadius,
  required this.onPressed});
  double? bheight, bwidth;
  Color? bgcolor;
  String? text;
  TextStyle? textStyle;
  BorderRadius? borderRadius;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:bwidth?? double.infinity,
      height:bheight?? 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(bgcolor?? Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius:borderRadius?? BorderRadius.circular(10)
          ))
        ),
        onPressed: onPressed,
        child: Text(
          text??'',
          style: textStyle?? const TextStyle(color: Colors.white,),
        ),
      ),
    );
  }
}
