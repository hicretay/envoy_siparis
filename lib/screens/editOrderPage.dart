import 'package:envoy_siparis/constants.dart';
import 'package:envoy_siparis/screens/fuelSelectionPage.dart';
import 'package:envoy_siparis/widgets/buttonWidget.dart';
import 'package:envoy_siparis/widgets/logoWidget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditOrderPage extends StatefulWidget {
  EditOrderPage({Key key}) : super(key: key);

  @override
  _EditOrderPageState createState() => _EditOrderPageState();
}

class _EditOrderPageState extends State<EditOrderPage> {
  TextEditingController textEditingControllerAdress = TextEditingController();
  TextEditingController textEditingControllerNote = TextEditingController();

  String selectedDeliveryArea = "Mersin Ayhanlar Madencilik";
  String selectedDeliveryMethod = "Nakliye Dahil";
  String selectedFillingTank = "Mersin Aytemiz";
  String selectedSaleType = "Toptan Depo";
  String selectedDeliveryTime= "Öğleden Önce";

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("yeni sipariş",style: leadingStyle)),
      body: Stack(
        children:[
             Container(color: bgColor),
             Padding(
               padding: const EdgeInsets.all(minSpace),
               child: SingleChildScrollView(
                 child: Column(children: [
                   Container(
                        width: deviceWidth(context),
                        height: deviceHeight(context)*0.05,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(maxSpace),topRight: Radius.circular(maxSpace)),
                        color: Colors.black),
                        child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Text("ayhanlar madencilik mühendislik otomotiv", 
                          style: TextStyle(fontFamily: leadingFont,color: Colors.white)),
                          Icon(Icons.close, color: btnColor),
                          ])),
                      ),

                      SizedBox(height: deviceHeight(context)*0.01),
                      //------------------------------------------------------------------teslimat yeri -------------------------------------------------------------------------
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Padding(
                              padding: const EdgeInsets.only(left: minSpace),
                              child: Text("teslimat yeri",style: cardTextStyle,),
                            ),
                            Container(
                            width: deviceWidth(context),
                            child: Card(
                              elevation: 15,
                              color: darkCardColor,
                              child:  DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  isDense: true,
                                  iconEnabledColor: Colors.white,
                                  iconSize: 30,
                                  dropdownColor: darkCardColor,
                                  value: selectedDeliveryArea,
                                  items: [
                                    DropdownMenuItem(child: Text("Mersin Ayhanlar Madencilik",style: TextStyle(color: Colors.white, fontSize: 14)),value: "Mersin Ayhanlar Madencilik"),
                                    DropdownMenuItem(child: Text("Mersin Ayhanlar Madencilik2",style: TextStyle(color: Colors.white, fontSize: 14)),value: "Mersin Ayhanlar Madencilik2"),
                                  ],
                                  onChanged: (value) {
                                   setState(() {
                                     selectedDeliveryArea = value;
                                   });
                                   },
                                  ),
                              ),
                              ),
                          ),
                        ],
                      ),
                      //------------------------------------------------------------------------------------------------------------------------------------------------------
                      SizedBox(height: deviceHeight(context)*0.01),
                      //-----------------------------------------------------------teslimat şekli ----------------------------------------------------------------------------
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Padding(
                              padding: const EdgeInsets.only(left: minSpace),
                              child: Text("teslimat şekli",style: cardTextStyle,),
                            ),
                            Container(
                            width: deviceWidth(context),
                            child: Card(
                              elevation: 15,
                              color: darkCardColor,
                              child:  DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  isDense: true,
                                  iconEnabledColor: Colors.white,
                                  iconSize: 30,
                                  dropdownColor: darkCardColor,
                                  value: selectedDeliveryMethod,
                                  items: [
                                     DropdownMenuItem(child: Text("Nakliye Dahil",style: TextStyle(color: Colors.white, fontSize: 14)),value: "Nakliye Dahil"),
                                     DropdownMenuItem(child: Text("Nakliye Hariç",style: TextStyle(color: Colors.white, fontSize: 14)),value: "Nakliye Hariç"),
                                  ],
                                  onChanged: (value) {
                                   setState(() {
                                     selectedDeliveryMethod = value;
                                   });
                                   },
                                  ),
                              ),
                              ),
                          ),
                        ],
                      ),
                      //----------------------------------------------------------------------------------------------------------------------------------------------
                      SizedBox(height: deviceHeight(context)*0.01),
                      //--------------------------------------------------------dolum yapılacak depo -----------------------------------------------------------------
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Padding(
                              padding: const EdgeInsets.only(left: minSpace),
                              child: Text("dolum yapılacak depo",style: cardTextStyle),
                            ),
                            Container(
                            width: deviceWidth(context),
                            child: Card(
                              elevation: 15,
                              color: darkCardColor,
                              child:  DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  isDense: true,
                                  iconEnabledColor: Colors.white,
                                  iconSize: 30,
                                  dropdownColor: darkCardColor,
                                  value: selectedFillingTank,
                                  items: [
                                    DropdownMenuItem(child: Text("Mersin Aytemiz",style: TextStyle(color: Colors.white, fontSize: 14)),value: "Mersin Aytemiz"),
                                    DropdownMenuItem(child: Text("Mersin Aytemiz2",style: TextStyle(color: Colors.white, fontSize: 14)),value: "Mersin Aytemiz2"),
                                  ],
                                  onChanged: (value) {
                                   setState(() {
                                     selectedFillingTank = value;
                                   });
                                   },
                                  ),
                              ),
                              ),
                          ),
                        ],
                      ),
                      //-------------------------------------------------------------------------------------------------------------------------------------------
                      SizedBox(height: deviceHeight(context)*0.01),
                      //------------------------------------------------------------satış tipi ---------------------------------------------------------------------
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Padding(
                              padding: const EdgeInsets.only(left: minSpace),
                              child: Text("satış tipi",style: cardTextStyle),
                            ),
                            Container(
                            width: deviceWidth(context),
                            child: Card(
                              elevation: 15,
                              color: darkCardColor,
                              child:  DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  isDense: true,
                                  iconEnabledColor: Colors.white,
                                  iconSize: 30,
                                  dropdownColor: darkCardColor,
                                  value: selectedSaleType,
                                  items: [
                                    DropdownMenuItem(child: Text("Toptan Depo",style: TextStyle(color: Colors.white, fontSize: 14)),value: "Toptan Depo"),
                                    DropdownMenuItem(child: Text("Toptan Depo2",style: TextStyle(color: Colors.white, fontSize: 14)),value: "Toptan Depo2"),
                                  ],
                                  onChanged: (value) {
                                   setState(() {
                                     selectedSaleType = value;
                                   });
                                   },
                                  ),
                              ),
                              ),
                          ),
                        ],
                      ),
                      //----------------------------------------------------------------------------------------------------------------------------------------
                      SizedBox(height: deviceHeight(context)*0.01),
                      //----------------------------------------------------teslim tarihi saati----------------------------------------------------------------
                      Container(
                        width: deviceWidth(context),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Padding(
                                padding: const EdgeInsets.only(left: minSpace),
                                child: Text("teslim tarihi saati",style: cardTextStyle),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                              Container(
                                  width: deviceWidth(context)*0.48,
                                  height: deviceHeight(context)*0.05,
                                  child: Card(
                                    elevation: 15,
                                    color: darkCardColor,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [                               
                                      Padding(
                                        padding: const EdgeInsets.only(left: minSpace),
                                        child: Text(DateFormat.yMd().format(selectedDate),style: TextStyle(color: Colors.white)),
                                      ),
                                      IconButton(icon: Icon(Icons.calendar_today_outlined,color: Colors.white,size: 15,), onPressed: (){
                                        _selectDate(context);
                                      }),                               
                                      ]), 
                                    ),
                              ),
                                  Container(
                                  width: deviceWidth(context)*0.48,
                                  child: Card(
                                    elevation: 15,
                                    color: darkCardColor,
                                    child:  DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        isDense: true,
                                        iconEnabledColor: Colors.white,
                                        iconSize: 30,
                                        dropdownColor: darkCardColor,
                                        value: selectedDeliveryTime,
                                        items: [
                                          DropdownMenuItem(child: Text("Öğleden Önce",style: TextStyle(color: Colors.white, fontSize: 14)),value: "Öğleden Önce"),
                                          DropdownMenuItem(child: Text("Öğleden Sonra",style: TextStyle(color: Colors.white, fontSize: 14)),value: "Öğleden Sonra"),
                                        ],
                                        onChanged: (value) {
                                         setState(() {
                                           selectedDeliveryTime = value;
                                         });
                                         },
                                        ),
                                    ),
                                    ),
                                 ),
                               ],
                            ),
                          ],
                        ),
                      ),
                      //--------------------------------------------------------------------------------------------------------------------------------------
                      SizedBox(height: deviceHeight(context)*0.01),
                      //-----------------------------------------------------teslimat adresi satırı------------------------------------------------------------
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Padding(
                            padding: const EdgeInsets.only(left: minSpace),
                            child: Text("teslimat adresi",style: cardTextStyle),
                          ),
                          TextField(
                          controller: textEditingControllerAdress,
                          obscureText: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(deviceHeight(context)*0.002),
                            filled: true,
                            fillColor: darkCardColor,
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 16,
                            ),
                          ),
                      ),
                    ],
                  ),
                  //-----------------------------------------------------------------------------------------------------------------------------------------
                  SizedBox(height: deviceHeight(context)*0.01),
                                  //-----------------------------------------------------not satırı------------------------------------------------------------
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Padding(
                            padding: const EdgeInsets.only(left: minSpace),
                            child: Text("not",style: cardTextStyle),
                          ),
                          TextField(                         
                          controller: textEditingControllerNote,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.white),
                            contentPadding: EdgeInsets.all(deviceHeight(context)*0.002),
                            filled: true,
                            fillColor: darkCardColor,
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 16,
                            ),
                          ),
                      ),
                    ],
                  ),
                  //-----------------------------------------------------------------------------------------------------------------------------------------
                  SizedBox(height: deviceHeight(context)*0.05),
                  //-------------------------------------İLERİ BUTONU------------------------------------
                   Align(
                     alignment: Alignment.bottomCenter,
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ButtonWidget(
                       buttonColor: btnColor,
                       buttonText: "ileri",
                       buttonWidth: deviceWidth(context), 
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> FuelSelectionPage()));
                       }),
                     )),
                  //-------------------------------------------------------------------------------------
                 ],),
               ),
             ),
        ],
      ),
      bottomNavigationBar: LogoWidget(),
    );
  }
}