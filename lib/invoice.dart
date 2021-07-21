/*
----------Yuvraj's Invoice----------------------------------------------------
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvoiceList extends StatefulWidget{

  //TODO:Recieve details on the shoe and create an invoice
  String imageUrl;
  String name;
  String price;
  String color;
  String size;

  InvoiceList({this.imageUrl="",this.name="",this.price="",this.color="",this.size=""});


  _InvoiceListState createState() => _InvoiceListState();

}
class _InvoiceListState extends State<InvoiceList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.delete_rounded,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Center(
              child: Text(
                'Invoice',
                style: TextStyle(
                    fontFamily: 'Poppins', color: Colors.black, fontSize: 25),
              )),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 16, 10, 10),
            height: 500,
            width: 500,
            decoration: BoxDecoration(
              color: new Color(0xFFebebeb),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 60),
            height: 50,
            width: 600,
            color: new Color(0xFFebebeb),
            child: Center(
              child: Row(
                children: [
                  Text(
                    "Subtotal :",
                    style: TextStyle(fontFamily: 'Poppins', color: Colors.grey),
                  ),
                  Text(
                    //TODO: Use the data To calculate Actual PRICE-------------------------------------------------------
                    "\$250.00",
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Text("Taxes:",
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.grey))),
                  Text("\$40", style: TextStyle(fontFamily: 'Poppins'))
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
            height: 120,
            width: 500,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    width: 100,
                    child: Text(
                      //TODO:ADD ACTUAL CALCULATED PRICE WITH THE TAX-----------------------------------------------------
                      "\$${250 + 40}",
                      style: TextStyle(fontSize: 25, fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: RaisedButton.icon(
                      splashColor: Colors.grey,
                      icon: Icon(
                        Icons.door_front, color: new Color(0xFF98d2ed),),
                      label: Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                          child: Text("Check Out", style: TextStyle(
                              fontFamily: 'Poppins', color: new Color(
                              0xFF98d2ed)),)),
                      onPressed: () {},
                      color: new Color(0xFF7153a6),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),))
              ],
            ),
            decoration: BoxDecoration(
              color: new Color(0xFFebebeb),
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ],
      ),
    );
  }
}