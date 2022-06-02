import 'package:envoy_siparis/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'orderRowWidget.dart';

class NewOrderCardWidget extends StatefulWidget {
  final String deliveryMethod, fillingPoint, deliveryStation, status, totalLT,tank,orderDate, dealer;
  final Widget child;
  final Color statusColor;
  final bool selected;
  final VoidCallback onTap, orderTap;

  NewOrderCardWidget({
    Key key,
    this.deliveryMethod,
    this.fillingPoint,
    this.deliveryStation,
    this.status,
    this.totalLT,
    this.child,
    this.statusColor, this.selected, this.tank, this.dealer, this.orderDate, this.onTap, this.orderTap,
  }) : super(key: key);

  @override
  _NewOrderCardWidgetState createState() => _NewOrderCardWidgetState();
}

class _NewOrderCardWidgetState extends State<NewOrderCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Slidable(actionPane: SlidableBehindActionPane(),
     //--------------Slidable sağa kaydırılınca çıkacak görünüm----------------
      secondaryActions: [
        IconSlideAction(
        iconWidget: Text("sipariş\ndüzenle", style: cardTextStyle),
        color     : transferredOrderColor,
        onTap     : widget.onTap),
      ],
      //------------------------------------------------------------------------
      child: GestureDetector(
        child: Card(
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
              color       : btnColor),
              child       : Row(children: [
                            SizedBox(width: deviceWidth(context)*0.02),
                            Text("sipariş durumu : ", style: TextStyle(fontWeight: FontWeight.normal, fontFamily: leadingFont)),
                            Text("yeni sipariş", style: TextStyle(fontWeight: FontWeight.normal, fontFamily: leadingFont)),]),
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
                    child: Text("toplam litre / tutar", style: cardTextStyle),
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
        ),
       onTap: widget.orderTap,
      ),
    );
  }
}