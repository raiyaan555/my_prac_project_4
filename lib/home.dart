import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_prac_project_4/invoice.dart';
import 'package:my_prac_project_4/model_file.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List <ItemList> shoeDetails = [
    ItemList("https://images.unsplash.com/photo-1597248881519-db089d3744a5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c25lYWtlcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60","Jordan Amber",'240.00'),
    ItemList('https://images.unsplash.com/photo-1579338559194-a162d19bf842?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c25lYWtlcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',"Air Jordan Kelly",'230.00'),
    ItemList('https://images.unsplash.com/photo-1607522370275-f14206abe5d3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c25lYWtlcnN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',"Converse Chuck Taylor",'250.00'),
    ItemList('https://images.unsplash.com/photo-1549298916-f52d724204b4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHNuZWFrZXJzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',"Air Suede Denim",'230.00'),
    ItemList('https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',"Nike Barbie",'220.00'),
    ItemList('https://images.unsplash.com/photo-1465453869711-7e174808ace9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHNuZWFrZXJzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',"New Balance Runner",'260.00'),
    ItemList('https://images.unsplash.com/photo-1552346053-c33aa8b3d665?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHNuZWFrZXJzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',"Jordan Sancho",'250.00'),
    ItemList('https://images.unsplash.com/photo-1617695103171-8f9c25f014c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHNuZWFrZXJzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',"Air Force 1 Suede Black",'220.00')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('XE', style: TextStyle(
          color: Colors.blue[900],
          fontSize: 20.0,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.menu_rounded),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Menu'),
              ));
            },
            color: Colors.black,
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.search_rounded, color: Colors.black),
              tooltip: "Save Todo and Retrun to List",
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Search'),
                ));
              },
            )

          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align( alignment: Alignment.topLeft,
              child: Text(
                'Our Product',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
          Container(
            height: 670.0,
            child: GridView.count(crossAxisCount: 2,
              padding: EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              childAspectRatio: 0.7,
              children: List.generate(shoeDetails.length, (index) => ItemList(shoeDetails[index].url,shoeDetails[index].name, shoeDetails[index].price)
    )
    )
            ),
        ],

      ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
      //  ---------------------------------------------------------------------------------------------------Show Yuvraj's Screen-----------------------------------------------------------------------------
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
        return InvoiceList('','','0.0','','');
      }));
      },
      backgroundColor: Colors.blue[900],
      child: Icon(Icons.shopping_cart,color: Colors.blue[100],),

    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


