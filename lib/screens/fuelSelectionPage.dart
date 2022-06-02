import 'package:envoy_siparis/constants.dart';
import 'package:envoy_siparis/widgets/buttonWidget.dart';
import 'package:envoy_siparis/widgets/logoWidget.dart';
import 'package:flutter/material.dart';

class FuelSelectionPage extends StatefulWidget {
  FuelSelectionPage({Key key}) : super(key: key);

  @override
  _FuelSelectionPageState createState() => _FuelSelectionPageState();
}

class _FuelSelectionPageState extends State<FuelSelectionPage> {
  String selectedFuelType = "Benzin";
  String selectedPaymentMethod = "Nakit";

  TextEditingController textEditingControllerLT = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("yakıt seçimi", style: leadingStyle)),
      body: Container(
          color: bgColor,
          child: Padding(
            padding: const EdgeInsets.all(minSpace),
            child: Column(children: [
              Container(
                width: deviceWidth(context),
                height: deviceHeight(context) * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(maxSpace), topRight: Radius.circular(maxSpace)), color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("ayhanlar madencilik mühendislik otomotiv", style: TextStyle(fontFamily: leadingFont, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Card(
                color: darkCardColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(maxSpace))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: deviceHeight(context) * 0.01),
                    //------------------------------------------------------------------yakıt tipi seçimi -------------------------------------------------------------------------
                    Padding(
                      padding: const EdgeInsets.only(left: minSpace),
                      child: Text(
                        "yakıt tipi seçimi",
                        style: cardTextStyle,
                      ),
                    ),
                    Container(
                      width: deviceWidth(context),
                      child: Card(
                        elevation: 15,
                        color: bgColor,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            isDense: true,
                            iconEnabledColor: Colors.white,
                            iconSize: 30,
                            dropdownColor: darkCardColor,
                            value: selectedFuelType,
                            items: [
                              DropdownMenuItem(child: Text("Benzin", style: TextStyle(color: Colors.white, fontSize: 14)), value: "Benzin"),
                              DropdownMenuItem(child: Text("Motorin", style: TextStyle(color: Colors.white, fontSize: 14)), value: "Motorin"),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selectedFuelType = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    //-----------------------------------------------------------------------------------------------------------------------------------------------------------
                    SizedBox(height: deviceHeight(context) * 0.01),
                    //------------------------------------------------------------------litre - ödeme şekli -------------------------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //-------------------------------Litre satırı--------------------------------------
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: minSpace),
                              child: Text("litre", style: cardTextStyle),
                            ),
                            Container(
                              width: deviceWidth(context) * 0.47,
                              height: deviceHeight(context) * 0.05,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(maxSpace))),
                              child: Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(maxSpace)),
                                elevation: 15,
                                color: bgColor,
                                child: TextField(
                                  controller: textEditingControllerLT,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.all(deviceHeight(context) * 0.002),
                                    filled: true,
                                    fillColor: bgColor,
                                    hintStyle: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        //--------------------------------------------------------------------------------------
                        //--------------------------------ödeme şekli satırı-----------------------------------
                        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Padding(padding: const EdgeInsets.only(left: minSpace), child: Text("ödeme şekli", style: cardTextStyle)),
                          Container(
                            width: deviceWidth(context) * 0.47,
                            child: Card(
                              elevation: 15,
                              color: bgColor,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  isDense: true,
                                  iconEnabledColor: Colors.white,
                                  iconSize: 30,
                                  dropdownColor: bgColor,
                                  value: selectedPaymentMethod,
                                  items: [
                                    DropdownMenuItem(child: Text("Nakit", style: TextStyle(color: Colors.white, fontSize: 14)), value: "Nakit"),
                                    DropdownMenuItem(child: Text("Taksit", style: TextStyle(color: Colors.white, fontSize: 14)), value: "Taksit"),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      selectedPaymentMethod = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ]),
                        //---------------------------------------------------------------------------------
                      ],
                    ),
                    //-----------------------------------------------------------------------------------------------------------------------------------------------------------
                    SizedBox(height: deviceHeight(context) * 0.01),
                    //------------------------------------------------------------------litre - ödeme şekli -------------------------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //-------------------------------vade seçimi satırı--------------------------------------
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.only(left: minSpace), child: Text("vade seçimi", style: cardTextStyle)),
                            Container(
                              width: deviceWidth(context) * 0.47,
                              child: Card(
                                elevation: 15,
                                color: bgColor,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isDense: true,
                                    iconEnabledColor: Colors.white,
                                    iconSize: 30,
                                    dropdownColor: bgColor,
                                    value: selectedPaymentMethod,
                                    items: [
                                      DropdownMenuItem(child: Text("Nakit", style: TextStyle(color: Colors.white, fontSize: 14)), value: "Nakit"),
                                      DropdownMenuItem(child: Text("Taksit", style: TextStyle(color: Colors.white, fontSize: 14)), value: "Taksit"),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        selectedPaymentMethod = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        //--------------------------------------------------------------------------------------
                        //--------------------------------birim fiyat satırı-----------------------------------
                        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Padding(
                            padding: const EdgeInsets.only(left: minSpace),
                            child: Text("birim fiyat", style: cardTextStyle),
                          ),
                          Container(
                            width: deviceWidth(context) * 0.47,
                            height: deviceHeight(context) * 0.05,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(maxSpace))),
                            child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(maxSpace)),
                              elevation: 15,
                              color: bgColor,
                              child: TextField(
                                controller: textEditingControllerLT,
                                obscureText: false,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.all(deviceHeight(context) * 0.002),
                                  filled: true,
                                  fillColor: bgColor,
                                  hintStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        //---------------------------------------------------------------------------------
                      ],
                    ),
                    //-----------------------------------------------------------------------------------------------------------------------------------------------------------
                    SizedBox(height: deviceHeight(context) * 0.01),
                    Padding(
                      padding: const EdgeInsets.only(bottom: maxSpace, left: maxSpace, right: maxSpace),
                      child: ButtonWidget(buttonColor: btnColor, buttonText: "ürün ekle", buttonWidth: deviceWidth(context), onPressed: () {}),
                    ),
                  ],
                ),
              ),
              Container(
                height: deviceHeight(context) * 0.26,
                child: Card(
                  color: darkCardColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(maxSpace)),
                  elevation: 20.0,
                  child: ListView.builder(
                      itemCount: 1,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: maxSpace),
                          child: Container(
                            color: bgColor,
                            height: deviceHeight(context) * 0.05,
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
                                  child: Text("5.804 TL", style: TextStyle(color: greyTextColor, fontSize: 13)),
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
                  height: deviceHeight(context) * 0.06,
                  width: deviceWidth(context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(maxSpace), bottomRight: Radius.circular(maxSpace)),
                      color: emptyOrderColor),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Column(children: [
                        Text("toplam", style: TextStyle(fontFamily: leadingFont, color: Colors.white, fontSize: 12)),
                        Container(
                          color: bgColor,
                          height: deviceHeight(context) * 0.035,
                          width: deviceWidth(context) * 0.25,
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Column(children: [
                        Text("kdv", style: TextStyle(fontFamily: leadingFont, color: Colors.white, fontSize: 12)),
                        Container(
                          color: bgColor,
                          height: deviceHeight(context) * 0.035,
                          width: deviceWidth(context) * 0.25,
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Column(children: [
                        Text("toplam tutar", style: TextStyle(fontFamily: leadingFont, color: Colors.white, fontSize: 12)),
                        Container(
                          color: bgColor,
                          height: deviceHeight(context) * 0.035,
                          width: deviceWidth(context) * 0.25,
                          child: Center(child: Text("124600.000 TL", style: TextStyle(color: Colors.white, fontSize: 11))),
                        )
                      ]),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: maxSpace, right: maxSpace),
                child: ButtonWidget(buttonColor: btnColor, buttonText: "sipariş ver", buttonWidth: deviceWidth(context), onPressed: () {}),
              ),
            ]),
          )),
      bottomNavigationBar: LogoWidget(),
    );
  }
}
