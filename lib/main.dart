import 'package:flutter/material.dart';

void main() => runApp(CarShowroomApp());

class CarShowroomApp extends StatelessWidget {
  const CarShowroomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zaire Showroom Page',
      theme: ThemeData(primarySwatch: Colors.red),
      home: CarShowroomPage(),
    );
  }
}

class CarShowroomPage extends StatelessWidget {
  const CarShowroomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
      title: Text(
        'Zaire Car Showroom',
        style: TextStyle(color: Colors.yellowAccent),
      ),
        backgroundColor: Colors.black,
        centerTitle: true,
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search Cars',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            // Car Card 1
            CarCard(
              imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/2025-tesla-model-x-6734b3d48460d.jpg?crop=0.633xw:0.507xh;0.201xw,0.236xh&resize=1200:*',
              carName: 'Tesla Model S',
              price: '\$75,000',
            ),
            // Car Card 2
            CarCard(
              imageUrl: 'https://imgd.aeplcdn.com/664x374/n/3te3bbb_1676645.png?q=80',
              carName: 'BMW X5',
              price: '\$65,000',
            ),
          ],
        ),
      ),
    );
  }
}

class CarCard extends StatelessWidget {
  final String imageUrl;
  final String carName;
  final String price;

  const CarCard({super.key, required this.imageUrl, required this.carName, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 4)],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(imageUrl, height: 200, fit: BoxFit.cover),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(Icons.favorite_border, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(carName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(price, style: TextStyle(fontSize: 18, color: Colors.green)),
            ],
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // Add action here
            },
            child: Text('Book Now'),
          ),
        ],
      ),
    );
  }
}
