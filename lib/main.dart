import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zaire Showroom Page',
      home:Scaffold(
        appBar: AppBar(title:Text('Zaire Car Showroom',
        style:TextStyle(
          fontSize: 20, letterSpacing: 12
        )),
        backgroundColor:Colors.amber,
        centerTitle: true,
        ),
        body: ListView(
          children: [
            MyListItem(carname: 'Ford', imageurl: 'assets/images/Ford.jpg', price: 600000000),
            MyListItem(carname: 'Lamborghini', imageurl: 'assets/images/Lamborghini.jpg', price: 800000000),
            MyListItem(carname: 'Mclaren', imageurl: 'assets/images/Mclaren.jpg', price: 500000000),
            MyListItem(carname: 'Sedan', imageurl: 'assets/images/Sedan.jpg', price: 600000000)
          ],

        ),
      ),
      
    );
  }
}

class MyListItem extends StatelessWidget {
  final String carname,imageurl;
  final double price;
  MyListItem({super.key,required this.carname, required this.imageurl, required this.price});

  final inrFormat = NumberFormat.currency(locale:'en_IN',symbol: '₹',decimalDigits:2);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey,width: 0.5),

      ),
      elevation: 1,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            color: Colors.grey[200],
            width:200,
            height:200,
            child: Image.asset(imageurl,width:160,height:150, fit:BoxFit.cover),
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Text(carname,style:TextStyle(
                fontSize: 20,fontWeight: FontWeight.w600
              )),
              SizedBox(height:20),
              Text(inrFormat.format(price),style:TextStyle(
                fontSize: 18
              )),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white
                ),
                child: Text("Buy Now"))
            ],
          )
        ],
      )
    );
  }
}