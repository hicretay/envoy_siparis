import 'package:flutter/material.dart';
import '../constants.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final double buttonWidth;
  final double buttonHeight;
  final VoidCallback onPressed;
  final Color buttonColor;

  const ButtonWidget({
    Key key,
    this.buttonText,
    this.buttonWidth,
    this.onPressed,
    this.buttonColor, this.buttonHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: buttonWidth, // buton genişliği verilecek
      height: buttonHeight, // buton yüksekliği sabit
      elevation: 20.0,
      color: buttonColor,    
      child: Text(
        buttonText,
        //------------------------buton yazı stili------------------------------
        style: TextStyle(
          fontFamily: leadingFont, // yazı fontu
          color: Colors.white, // yazı rengi
          fontSize: 30, // yazı boyutu
        ),
        //----------------------------------------------------------------------
      ),
      onPressed: onPressed,
    );
  }
}