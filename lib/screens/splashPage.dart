import 'package:envoy_siparis/constants.dart';
import 'package:envoy_siparis/screens/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {     
    return Container(
      width: deviceWidth(context),
      height: deviceHeight(context),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),//Svg("assets/images/bg.svg"),
          fit: BoxFit.cover,
          
          // resim erkanı kaplayacak
        ),
      ),
      child: 
          Column(
            children:[
              SizedBox(height: deviceHeight(context)*0.25),
              SvgPicture.asset("assets/images/logo.svg", color: logoColor),
            ],
          ),  // logo svg'sinin gösterilmesi           
    );
  }
}