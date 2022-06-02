import 'package:envoy_siparis/constants.dart';
import 'package:envoy_siparis/widgets/logoWidget.dart';
import 'package:envoy_siparis/widgets/orderDetailCardWidget.dart';
import 'package:flutter/material.dart';

class OrderDetailPage extends StatefulWidget {
  OrderDetailPage({Key key}) : super(key: key);

  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("sipariş detay",style: leadingStyle)),
      body: Container(
        color: bgColor,
        child: Padding(
          padding: const EdgeInsets.all(minSpace),
          child: Column(
            children: [
              OrderDetailCardWidget(
                orderDate     : "23.06.2021 17:00",
                dealer        : "Ayhanlar Madencilik",
                fillingPoint  : "mersin aytemiz",
                deliveryPoint : "MERSİN AYHANLAR MADENCİLİK",
                deliveryMethod: "Dağıtım Aracı",
                totalLT       : "120000.00 LT",
                statusColor   : approvedOrderColor,
                driverName    : "Ferhat Bozkurt",
                numberPlate   : "42FP092",
              ),

              Container(
                height: deviceHeight(context)*0.37,
                child: Card(                
                  color: darkCardColor,
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(maxSpace)),
                  elevation: 20.0,
                  child: ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.only(top: maxSpace),
                        child: Container(                              
                        color: bgColor,
                        height: deviceHeight(context)*0.05,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("benzin", style: TextStyle(color: greyTextColor, fontSize: 13)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1000000", style: TextStyle(color: greyTextColor, fontSize: 13)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("elden nakit", style: TextStyle(color: greyTextColor, fontSize: 13)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("75 gün", style: TextStyle(color: greyTextColor, fontSize: 13)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("5.804 TL", style: TextStyle(color:greyTextColor, fontSize: 13)),
                            ),

                          ]),
                        ),
                       ),
                      );
                  }),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(minSpace),
                child: Container(
                  height      : deviceHeight(context)*0.06,
                  width       : deviceWidth(context),
                  decoration  : BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(maxSpace),bottomRight: Radius.circular(maxSpace)),
                  color       : emptyOrderColor),
                  child       : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 3),
                       child: Column(children: [
                         Text("toplam",style: TextStyle(fontFamily: leadingFont, color: Colors.white,fontSize: 12)),
                         Container(
                           color: bgColor,
                           height: deviceHeight(context)*0.035,
                           width: deviceWidth(context)*0.25,
                         )
                       ]),
                     ),
                     Padding(
                        padding: const EdgeInsets.only(top: 3),
                       child: Column(children: [
                         Text("kdv",style: TextStyle(fontFamily: leadingFont, color: Colors.white,fontSize: 12)),
                         Container(
                           color: bgColor,
                           height: deviceHeight(context)*0.035,
                           width: deviceWidth(context)*0.25,
                         )
                       ]),
                     ),
                     Padding(
                        padding: const EdgeInsets.only(top: 3),
                       child: Column(children: [
                         Text("toplam tutar",style: TextStyle(fontFamily: leadingFont, color: Colors.white,fontSize: 12)),
                         Container(
                           color: bgColor,
                           height: deviceHeight(context)*0.035,
                           width: deviceWidth(context)*0.25,
                           child: Center(child: Text("124600.000 TL",style: TextStyle(color: Colors.white,fontSize: 11))),
                         )
                       ]),
                     ),
                     
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: LogoWidget(),
    );
  }
}