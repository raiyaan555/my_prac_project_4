/*
----------Yuvraj's Invoice----------------------------------------------------
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvoiceList extends StatefulWidget {

  String imageUrl;
  String name;
  String price;
  String color;
  String size;

  InvoiceList(this.imageUrl,this.name, this.price , this.color,this.size);

  _InvoiceListState createState() => _InvoiceListState();
}

class _InvoiceListState extends State<InvoiceList> {

  int _counter=1;
  double _totalPrice = 0.0;

  void decrement(){
    if(_counter < 2){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Cannot Be less than 1'),
      ));
    }else{
      setState(() {
        _counter--;
      });
    }
  }

  void increment(){
    setState(() {
      _counter++;
    });
  }

  double totalPrice(){
    return _totalPrice = double.parse(widget.price)*_counter;
  }

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
              //TODO:Create an Invoice
              child: Container(
                margin: EdgeInsets.all(10),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10,10,20,10),
                      width: 120,
                      height: 100,
                      decoration: BoxDecoration(
                        // color:Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: NetworkImage(widget.imageUrl),
                              fit: BoxFit.cover)
                      ),
                    ),
                    Container(
                      width: 120,
                      margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child:Padding(padding:EdgeInsets.fromLTRB(0, 20, 0,0),child:Column(
                        children: [
                          Align(alignment:Alignment.centerLeft,child:Text(widget.name,style: TextStyle(fontSize: 14,fontFamily: 'Poppins',color: new Color(0xFF7954ba)),),),
                          Align(alignment:Alignment.centerLeft,child:Padding(padding:EdgeInsets.only(top: 10),child:Text("\$${totalPrice()}",style: TextStyle(fontSize: 16,fontFamily: 'Poppins',color: new Color(0xFF7954ba),),)),),
                          Align(alignment:Alignment.centerLeft,child:Padding(padding:EdgeInsets.only(top: 10),child:Text("COLOR : ${widget.color}",style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Colors.grey,),)),),
                          Align(alignment:Alignment.centerLeft,child:Padding(padding:EdgeInsets.only(top: 10),child:Text("SIZE : ${widget.size}",style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Colors.grey,),)),),
                        ],
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(40,5,0,0),
                      child:Padding(padding:EdgeInsets.only(top: 10),child: Column(
                        children: [
                          new GestureDetector(
                            onTap: () {
                              decrement();
                              print(_counter);
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 1, 0, 10),
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    new BoxShadow(color: Colors.grey, blurRadius: 20.0)
                                  ]),
                              child: CircleAvatar(
                                radius: 13,
                                backgroundColor: Colors.white,
                                child: Stack(
                                  children: [
                                    Text("-"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Text("$_counter",style: TextStyle(fontFamily: 'Poppins')),
                            margin: EdgeInsets.fromLTRB(0, 2, 0, 9),
                          ),
                          new GestureDetector(
                            onTap: () {
                              increment();
                              print(_counter);
                            },
                            child: Container(
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    new BoxShadow(color: Colors.grey, blurRadius: 4.0)
                                  ]),
                              child: CircleAvatar(
                                radius: 13,
                                backgroundColor: new Color(0xFF98d2ed),
                                child: Stack(
                                  children: [
                                    Text("+",style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ),
                    ),
                  ],
                ),
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
                      "Subtotal : ",
                      style:
                          TextStyle(fontFamily: 'Poppins', color: Colors.grey),
                    ),
                    Text(
                      //TODO: Use the data To calculate Actual PRICE-------------------------------------------------------
                      "\$${totalPrice()}",
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
                        "\$${totalPrice()+40}",
                        style: TextStyle(fontSize: 25, fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: RaisedButton.icon(
                        splashColor: Colors.grey,
                        icon: Icon(
                          Icons.door_front,
                          color: new Color(0xFF98d2ed),
                        ),
                        label: Padding(
                            padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                            child: Text(
                              "Check Out",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: new Color(0xFF98d2ed)),
                            )),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Your bill amounts to \$${totalPrice()+40}'),
                          ));
                        },
                        color: new Color(0xFF7153a6),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                      ))
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
