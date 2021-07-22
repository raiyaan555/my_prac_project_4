
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_desc.dart';


class ItemList extends StatelessWidget {

  final String name;
  final String url;
  final String price;

  ItemList(this.url, this.name, this.price);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         //-----------------------------------------------------------------------------------------Aditya Screen Connect-----------------------------------------------------------
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return Item_desc(url,name,price);
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
            image: NetworkImage(url),
            fit:BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 2),
              spreadRadius: 2,//(x,y)
              blurRadius: 6,
            ),
          ],
        ),
        child: Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.only(top: 180),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column( children: [
              Text(
                name,style: TextStyle(
                fontFamily: 'PoppinsMedium',
                fontSize: 10,
                color: Colors.blueGrey
              ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                '\$ '+price,style: TextStyle(
                  fontFamily: 'PoppinsMedium',
                  fontSize: 19,
                  color: Colors.blue[900]
              ),

              ),
            ],),
               ),
      ),
    );
  }
}







