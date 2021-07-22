import 'package:flutter/material.dart';
import 'package:my_prac_project_4/product.dart';

class Item_desc extends StatefulWidget {
  final String name;
  final String url;
  final String price;
  Item_desc(this.url, this.name, this.price);

  @override
  _Item_desc_State createState() => _Item_desc_State();
}

class _Item_desc_State extends State<Item_desc> {

  List <String > urlList = [
    'https://images.unsplash.com/photo-1597248881519-db089d3744a5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c25lYWtlcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1579338559194-a162d19bf842?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c25lYWtlcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1607522370275-f14206abe5d3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c25lYWtlcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1549298916-f52d724204b4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHNuZWFrZXJzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1465453869711-7e174808ace9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHNuZWFrZXJzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1552346053-c33aa8b3d665?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHNuZWFrZXJzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1617695103171-8f9c25f014c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHNuZWFrZXJzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ];


  List <String> namesList = ["Jordan Amber", "Air Jordan Kelly", "Converse Chuck Taylor", "Air Suede Denim", "Nike Barbie", "New Balance Runner", "Jordan Sancho", "Air Force 1 Suede Black" ];
  List <String> priceList = ["\$ 240.00 ", "\$ 230.00" , "\$ 250.00","\$ 230.00","\$ 220.00", "\$ 260.00","\$ 250.00", "\$ 220.00"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Display(widget.url,widget.name,widget.price),
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      elevation : 0,
    );
  }
}