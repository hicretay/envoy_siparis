import 'package:envoy_siparis/constants.dart';
import 'package:flutter/material.dart';
import 'orderRowWidget.dart';

class OrdersCardWidget extends StatefulWidget {
  final String deliveryMethod, fillingPoint, deliveryStation, status, totalLT,tank,orderDate, dealer, orderStatus;
  final Widget child;
  final Color statusColor;
  final bool selected;

  OrdersCardWidget({
    Key key,
    this.deliveryMethod,
    this.fillingPoint,
    this.deliveryStation,
    this.status,
    this.totalLT,
    this.child,
    this.statusColor, this.selected, this.tank, this.dealer, this.orderDate, this.orderStatus,
  }) : super(key: key);

  @override
  _OrdersCardWidgetState createState() => _OrdersCardWidgetState();
}

class _OrdersCardWidgetState extends State<OrdersCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
    color: darkCardColor,
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(maxSpace)),
    elevation: 20.0,
    child: Column(
      children: [
        //------------------------------durum satırı--------------------------------
        Container(         
          height      : deviceHeight(context)*0.04,
          width       : deviceWidth(context),
          decoration  : BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(maxSpace),topRight: Radius.circular(maxSpace)),
          color       : widget.statusColor),
          child       : Row(children: [
                        SizedBox(width: deviceWidth(context)*0.02),
                        Text("sipariş durumu : ", style: TextStyle(fontWeight: FontWeight.normal, fontFamily: leadingFont)),
                        Text(widget.orderStatus, style: TextStyle(fontWeight: FontWeight.normal, fontFamily: leadingFont)),]),
        ),

        //--------------------------------------------------------------------------
        //---------------------------sipariş tarihi satırı--------------------------
        OrderRowWidget(leading: "sipariş tarihi", content: widget.orderDate),
        //--------------------------------------------------------------------------
        //------------------------------bayi adı satırı-----------------------------
        OrderRowWidget(leading: "bayi adı", content: widget.dealer),
        //--------------------------------------------------------------------------
        //-----------------------------dolum yeri satırı----------------------------
        OrderRowWidget(leading: "dolum yeri", content: widget.fillingPoint),
        //--------------------------------------------------------------------------
        //-------------------------------depo satırı--------------------------------
        OrderRowWidget(leading: "depo", content: widget.tank),
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
                child: Text("toplam litre", style: cardTextStyle),
              ),
              Text(" :", style: TextStyle(color: Colors.white)),
              Text(" ${widget.totalLT}",style: TextStyle(color: totalLtTxtColor)),
            ],
          ),
        ),
        //------------------------------------------------------------------
        SizedBox(height: deviceHeight(context)*0.01),
        //butonlar - card arası üst boşluk
      ],
    ),
      );
  }
}