import 'package:envoy_siparis/constants.dart';
import 'package:envoy_siparis/screens/editOrderPage.dart';
import 'package:envoy_siparis/screens/newOrderPage.dart';
import 'package:envoy_siparis/screens/orderDetailPage.dart';
import 'package:envoy_siparis/widgets/logoWidget.dart';
import 'package:envoy_siparis/widgets/newOrderCardWidget.dart';
import 'package:envoy_siparis/widgets/ordersCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("siparişler",style: leadingStyle)),
      floatingActionButton: FloatingActionButton(backgroundColor: btnColor,child: Icon(Icons.add,size: 35),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> NewOrderPage()));
      }),
      body: ProgressHUD(
            child: Builder(builder: (context)=>
            Container(color: bgColor, child: Column(children: [
            SizedBox(height: deviceHeight(context)*0.001),
            Flexible(
              child: ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index){
              return  Column(
                children:[
                    NewOrderCardWidget(
                    orderDate     : "23.06.2021 17:00",
                    dealer        : "Mersin Ayhanlar Madencilik",
                    tank          : "Yeni Sipariş",
                    fillingPoint  : "mersin aytemiz",
                    deliveryMethod: "Dağıtım Aracı",
                    totalLT       : "120000.00 LT",
                    onTap         :(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> EditOrderPage()));
                    } ,
                    orderTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderDetailPage()));
                    },
                  ),
                    OrdersCardWidget(
                    orderDate     : "23.06.2021 17:00",
                    dealer        : "Mersin Ayhanlar Madencilik",
                    tank          : "Yeni Sipariş",
                    fillingPoint  : "mersin aytemiz",
                    deliveryMethod: "Dağıtım Aracı",
                    totalLT       : "120000.00 LT",
                    statusColor   : approvedOrderColor,
                    orderStatus   : "şoför onayladı",
                  ),
                  OrdersCardWidget(
                    orderDate     : "23.06.2021 17:00",
                    dealer        : "Mersin Ayhanlar Madencilik",
                    tank          : "Yeni Sipariş",
                    fillingPoint  : "mersin aytemiz",
                    deliveryMethod: "Dağıtım Aracı",
                    totalLT       : "120000.00 LT",
                    statusColor   : emptyOrderColor,
                    orderStatus   : "tanker boşaltıldı",
                  ),
                  OrdersCardWidget(
                    orderDate     : "23.06.2021 17:00",
                    dealer        : "Mersin Ayhanlar Madencilik",
                    tank          : "Yeni Sipariş",
                    fillingPoint  : "mersin aytemiz",
                    deliveryMethod: "Dağıtım Aracı",
                    totalLT       : "120000.00 LT",
                    statusColor   : transferredOrderColor,
                    orderStatus   : "netsis'e aktarıldı",
                  ),
                  
                ],
              );
          }),
            )

        ]))
        ),
      ),
      bottomNavigationBar: LogoWidget(),
    );
  }
}