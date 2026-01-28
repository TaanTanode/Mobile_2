import 'package:flutter/material.dart';
import 'package:mobile_2/models/product.dart';

class DetailPage extends StatelessWidget {
  // const DetailPage({super.key});
  final Product product; 
  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Detail Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(product.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Image.network(product.imageUrl),
            SizedBox(height: 10,),
            Text(product.desc),
          ],
        ),
      )
      
      );
  }
}
