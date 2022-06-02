import 'package:envoy_siparis/widgets/logoWidget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class NewOrderPage extends StatefulWidget {
  NewOrderPage({Key key}) : super(key: key);

  @override
  _NewOrderPageState createState() => _NewOrderPageState();
}

class _NewOrderPageState extends State<NewOrderPage> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("yeni sipariş",style: leadingStyle)),
      body: Container(
         color: bgColor,
         child: Padding(
         padding: const EdgeInsets.all(minSpace),
         child: Column(
             children: [
               Container(
                 width: deviceWidth(context),
                 height: deviceHeight(context)*0.04,
                 decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(maxSpace),topRight: Radius.circular(maxSpace)),
                 color: Colors.black),
                 child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("firma listesi", style: TextStyle(fontFamily: leadingFont,color: Colors.white))),
               ),
              TextField(
                cursorColor: Colors.black,
                controller: textEditingController,
                obscureText: true,
                decoration: InputDecoration(  
                prefixIcon: Icon(Icons.search),
                isDense: true,    
                contentPadding: EdgeInsets.all(deviceHeight(context)*0.010),     
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(maxSpace))),
                hintText: "firma aramak için buraya yazınız",
                focusColor: Colors.black,
                hoverColor: Colors.black,
                hintStyle: TextStyle(
                color: Colors.black38,
                fontSize: 14,
                fontFamily: leadingFont
                ),
               ),
              ),
             SizedBox(height: deviceHeight(context)*0.005),
             Flexible(
               child: ListView.builder(
                 shrinkWrap: true,
                 itemCount: 8,
                 itemBuilder: (BuildContext context, int index){
                 return GestureDetector(
                   child: Card(
                   color: darkCardColor,
                   shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(maxSpace)),
                   elevation: 20.0,
                   child: Container(
                   width: deviceWidth(context),
                   height: deviceHeight(context)*0.05,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                     Text("ayhanlar madencilik mühendislik otomotiv",
                     style: TextStyle(
                     color: transferredOrderColor,
                     fontFamily: leadingFont)),
                     Icon(Icons.exit_to_app,color: Colors.white),
                   ])),
                 ),
                 onTap: (){},
                 );
               }),
             )
             ],
           ),
         ),
      ),
      bottomNavigationBar: LogoWidget(),
    );
  }
}