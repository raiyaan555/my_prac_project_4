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