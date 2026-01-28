import 'package:flutter/material.dart';
import 'package:mobile_2/about_page.dart';
import 'package:mobile_2/catalog_product.dart';
import 'package:mobile_2/datail_page.dart';

class MylistPage extends StatelessWidget {
  const MylistPage({super.key});


  // final List<String> products = <String>[
  //   'Water Filter',
  //   'Brown Long sleeve Jacket T01',
  //   'Filter 3 steps',
  //   'Smart Robot Car',
  //   'Remote controller DC-01'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('My List Page'),
      ),
      body: ListView.separated(
        itemCount: CatalogProduct.items.length,
        itemBuilder: (context, index) => 
        ListTile(
          leading: Image.network(CatalogProduct.items[index].imageUrl),
          title: Text(CatalogProduct.items[index].title),
          subtitle: Text(CatalogProduct.items[index].desc),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage(
              product: CatalogProduct.items[index],
            )))
          ),
          separatorBuilder: (context, int index) => const Divider(),
      )
    
      
      
    );
  }
}