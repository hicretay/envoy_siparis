import 'package:envoy_siparis/constants.dart';
import 'package:envoy_siparis/screens/homePage.dart';
import 'package:envoy_siparis/widgets/bgWidget.dart';
import 'package:envoy_siparis/widgets/buttonWidget.dart';
import 'package:envoy_siparis/widgets/textFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  void dispose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ProgressHUD(
        child: Builder(
          builder: (context) => Stack(
            children: [
              BgWidget(),
              SingleChildScrollView(
                reverse: true,
                child: Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Column(
                    children: [
                      SizedBox(height: deviceHeight(context) * 0.1), // giriş ikonu - cihaz üstü boşluk
                      //--------------giriş ikonunun yer alacağı container----------------
                      Container(
                        width: 127, //ikon genişliğine göre verildi
                        height: 71, //ikon yüksekliğine göre verildi
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/girisikon.png"), //logo resmi
                            fit: BoxFit.cover, // resim erkanı kaplayacak
                          ),
                        ),
                      ),
                      //------------------------------------------------------------------
                      SizedBox(height: defaultPadding), // logo - giriş ikonu arası boşluk
                      SvgPicture.asset("assets/images/logo.svg", color: logoColor), // logo svg'sinin gösterilmesi
                      SizedBox(height: deviceHeight(context) * 0.1), //logo - textFieldlar arası boşluk

                      SingleChildScrollView(
                        reverse: true,
                        child: Column(
                          children: [
                            //--------------------Kullanıcı adı textField'ı---------------------
                            Padding(
                              padding: const EdgeInsets.all(maxSpace),
                              child: TextFieldWidget(
                                textEditingController: txtUsername,
                                keyboardType: TextInputType.name,
                                hintText: "Kullanıcı Adı", //ipucu metni
                                obscureText: false, // yazılanlar gizlenmesin
                              ),
                            ),
                            //-------------------------Şifre textField'ı------------------------
                            Padding(
                              padding: const EdgeInsets.all(maxSpace),
                              child: TextFieldWidget(
                                textEditingController: txtPassword,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true, // yazılanlar gizlensin
                                hintText: "Şifre", //ipucu metni
                              ),
                            ),
                            //------------------------------------------------------------------
                            SizedBox(height: deviceHeight(context) * 0.05), // textField'lar - giriş butonu arası boşluk
                            //------------------------giriş butonu------------------------------
                            ButtonWidget(
                                buttonColor: btnColor,
                                buttonText: "giriş",
                                buttonWidth: deviceWidth(context) * 0.52, // buton genişliği
                                onPressed: () async {
                                  final progressUHD = ProgressHUD.of(context);
                                  progressUHD.show();
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                                  //tıklandığında anasayfaya yönlendirilecek
                                  progressUHD.dismiss();
                                  //doğru giriş
                                }),
                          ],
                        ),
                      ),
                      //------------------------------------------------------------------

                      //------------------------------------------------------------------
                      //----------------------şifremi unuttum butonu----------------------
                      // Flexible(
                      //     child    : Align(
                      //     alignment: Alignment.bottomCenter,// butonu en alta konumlandıracak
                      //       child  : TextButton(
                      //       child  : Text("şifremi unuttum", // buton metni
                      //           style: TextStyle(
                      //           color     : Colors.white,
                      //           fontFamily: leadingFont,
                      //           fontSize  : 17)),
                      //           onPressed : () {

                      //           },
                      //     ),
                      //   ),
                      // ),
                      //------------------------------------------------------------------
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
