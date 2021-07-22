import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'invoice.dart';

class Display extends StatefulWidget {
  final String name ;
  final String url;
  final String price;

  Display(this.url,this.name,this.price);

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  bool checkColor1 = false, checkColor2 = false, checkColor3 = false;
  bool checkColor7 = false, checkColor8 = false, checkColor9 = false, checkColor10 = false, checkColor11 = false;

  String color_name ='Amber';

  String shoe_size = 'US 7';


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget> [
                Center(
                  child: Column(
                    children: [
                      Text(
                        'XE',
                        style: TextStyle(color: Colors.blue.shade800,fontSize: 36,fontFamily: 'PoppinsLight'),
                      ),
                      Container(
                        height: size.height*0.42,
                        color: Colors.transparent,
                        child : CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: size.height*0.4,
                          child: CircleAvatar(
                            radius: size.height*0.18,
                            backgroundImage: Image.network(widget.url).image,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top : size.height*0.47),
                  height: size.height*0.34,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      )
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          '${widget.name}',
                          style: TextStyle(color: Colors.deepPurple,fontSize: 32,fontFamily: 'Poppins'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          'Lorem ipsum hic tempora dolor qui blanditiis quos vel iusto!',
                          style: TextStyle(color: Colors.black,fontSize: 15,fontFamily: 'PoppinsMedium'),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              'SIZE :',
                              style: TextStyle(color: Colors.deepPurple,fontSize: 24,fontFamily: 'PoppinsMedium'),
                            ),
                          ),
                          Container(
                            height: size.height/12,
                            width: size.width/1.5,
                            child: ListView (
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          checkColor7 = !checkColor7;
                                          checkColor8 = false;
                                          checkColor9 = false;
                                          checkColor10 = false;
                                          checkColor11 = false;
                                          shoe_size = '7';
                                        });
                                      },
                                      child: SizeBox(sizes: '7',isSelected2: checkColor7),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          checkColor8 = !checkColor8;
                                          checkColor7 = false;
                                          checkColor9 = false;
                                          checkColor10 = false;
                                          checkColor11 = false;
                                          shoe_size = '8';
                                        });
                                      },
                                      child: SizeBox(sizes: '8',isSelected2: checkColor8),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          checkColor9 = !checkColor9;
                                          checkColor8 = false;
                                          checkColor7 = false;
                                          checkColor10 = false;
                                          checkColor11 = false;
                                          shoe_size = '9';
                                        });
                                      },
                                      child: SizeBox(sizes: '9',isSelected2: checkColor9),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          checkColor10 = !checkColor10;
                                          checkColor8 = false;
                                          checkColor9 = false;
                                          checkColor7 = false;
                                          checkColor11 = false;
                                          shoe_size = '10';
                                        });
                                      },
                                      child: SizeBox(sizes: '10',isSelected2: checkColor10),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          checkColor11 = !checkColor11;
                                          checkColor7 = false;
                                          checkColor9 = false;
                                          checkColor10 = false;
                                          checkColor8 = false;
                                          shoe_size = '11';
                                        });
                                      },
                                      child: SizeBox(sizes: '11',isSelected2: checkColor11),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('COLOR :', style: TextStyle(color: Colors.deepPurple,fontSize: 24,fontFamily: 'PoppinsMedium'),),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                checkColor1 = !checkColor1;
                                checkColor2 = false;
                                checkColor3 = false;
                                color_name = 'amber';
                              });
                            },
                            child: ColorDot(color: Colors.amber,isSelected: checkColor1),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                checkColor2 = !checkColor2;
                                checkColor1 = false;
                                checkColor3 = false;
                                color_name = 'red';
                              });
                            },
                            child: ColorDot(color: Colors.red,isSelected: checkColor2),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                checkColor3 = !checkColor3;
                                checkColor2 = false;
                                checkColor1 = false;
                                color_name = 'green';
                              });
                            },
                            child: ColorDot(color: Colors.green,isSelected: checkColor3),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: size.width,
                  margin: EdgeInsets.only(top : size.height*0.82),
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Text(
                              "PRICE : ${widget.price}",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.deepPurple,
                                  fontFamily: 'PoppinsMedium'
                              ),
                            ),
                          ],
                        ),
                      ),
                      RaisedButton.icon(
                        highlightElevation: 20.0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        icon: Icon(Icons.shopping_cart),
                        label: Text("ADD TO CART"), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return InvoiceList(widget.url,widget.name,widget.price,color_name,shoe_size);
                        }));
                      },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({ required this.color, required this.isSelected}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(2.5),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: isSelected ? Colors.black : color,
          ),
          shape: BoxShape.circle,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
class SizeBox extends StatelessWidget {
  final String sizes;
  final bool isSelected2;

  const SizeBox({required this.sizes,required this.isSelected2}) ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width/6,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: Colors.black,
            ),
            color: isSelected2 ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(15.0)
        ),
        child: Center(
          child: Text(
            'US $sizes',
            style: TextStyle(fontSize: 18,fontFamily: 'PoppinsMedium'),
          ),
        ),
      ),
    );
  }
}