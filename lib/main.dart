import 'package:envoy_siparis/constants.dart';
import 'package:envoy_siparis/screens/splashPage.dart';
import 'package:flutter/material.dart';

void main() {

    ThemeData theme = ThemeData(
    fontFamily: contentFont, // uygulama yazı tipi
    //------------------------------AppBar teması-------------------------------
    appBarTheme: AppBarTheme(
      centerTitle: true, // appBar başlığı
      backgroundColor: btnColor, // appBar arkaplan rengi
      titleTextStyle: TextStyle(
        fontFamily: leadingFont, // appBar başlık yazı tipi
        color: Colors.white, // appBar başlık yazı rengi
        fontSize: 28, // appBar başlık yazı boyutu
      ),
    ),
    //--------------------------------------------------------------------------
  );

  runApp(MaterialApp(
    theme: theme,
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
  ));
}

