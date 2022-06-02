import 'package:envoy_siparis/constants.dart';
import 'package:flutter/material.dart';
import 'orderRowWidget.dart';

class OrderDetailCardWidget extends StatefulWidget {
  final String deliveryMethod, fillingPoint, totalLT,orderDate, dealer, deliveryPoint,driverName, numberPlate;
  final Widget child;
  final Color statusColor;
  final bool selected;

  OrderDetailCardWidget({
    Key key,
    this.deliveryMethod,
    this.fillingPoint,
    this.totalLT,
    this.child,
    this.statusColor, this.selected, this.dealer, this.orderDate, this.deliveryPoint, this.driverName, this.numberPlate,
  }) : super(key: key);

  @override
  _OrderDetailCardWidgetState createState() => _OrderDetailCardWidgetState();
}

class _OrderDetailCardWidgetState extends State<OrderDetailCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
    color: darkCardColor,
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(maxSpace)),
    elevation: 20.0,
    child: Column(
      children: [
        //---------------------------sipariş tarihi satırı--------------------------
        OrderRowWidget(leading: "sipariş tarihi", content: widget.orderDate),
        //--------------------------------------------------------------------------
        //------------------------------bayi adı satırı-----------------------------
        OrderRowWidget(leading: "bayi adı", content: widget.dealer),
        //--------------------------------------------------------------------------
        //-----------------------------dolum yeri satırı----------------------------
        OrderRowWidget(leading: "dolum yeri", content: widget.fillingPoint),
        //--------------------------------------------------------------------------
        //-----------------------------teslim yeri satırı----------------------------
        OrderRowWidget(leading: "dolum yeri", content: widget.deliveryPoint),
        //--------------------------------------------------------------------------
        //------------------------teslimat şekli satırı-----------------------------
        OrderRowWidget( leading: "teslimat şekli", content: widget.deliveryMethod),
        //--------------------------------------------------------------------------
        //---------------------------toplam litre satırı----------------------------
        Padding(
          padding: const EdgeInsets.all(minSpace),
          child: Row(
            children: [
              Container(
                width: deviceWidth(context) * 0.35,
                //toplam litre yazısının genişliği
                child: Text("toplam litre / tutar", style: cardTextStyle),
              ),
              Text(" :", style: TextStyle(color: Colors.white)),
              Text(" ${widget.totalLT}",style: TextStyle(color: totalLtTxtColor)),
            ],
          ),
        ),
        //------------------------------------------------------------------
        SizedBox(height: deviceHeight(context)*0.01),
        Padding(
          padding: const EdgeInsets.only(right: defaultPadding,left: defaultPadding),
          child: Divider(color: Colors.grey,height: 2,),
        ),
        SizedBox(height: deviceHeight(context)*0.01),
        //butonlar - card arası üst boşluk
        //-------------------------------şoför adı satırı--------------------------------
        OrderRowWidget(leading: "şoför adı", content: widget.driverName),
        //--------------------------------------------------------------------------
        //------------------------araç plakası satırı-----------------------------
        OrderRowWidget( leading: "araç plakası", content: widget.numberPlate),
        //--------------------------------------------------------------------------
        SizedBox(height: deviceHeight(context)*0.02),
      ],
    ),
      );
  }
}