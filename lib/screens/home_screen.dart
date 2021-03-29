import 'package:aaa/helpers/package_imports.dart';
import 'package:flutter/material.dart';

import '../core/woo_services/product_services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: ProductServices.listAllProducts(),
          builder: (_, snapshot) {
            if (snapshot.hasData) {

              List<WooProduct> products= snapshot.data;

            print(products[0].images[0].src);


              return GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 2.0),

                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 150,
                    alignment: Alignment.center,
                    child:Column(
                      children: [
                        Image(image:NetworkImage(products[index].images[0].src),fit: BoxFit.cover,),
                        Text(products[index].name,overflow: TextOverflow.fade,),
                       // Text(products[index].price),
                      ],
                    ),

                  );
                },
              );
            }

            return Text("No Data");
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("showing all products");
          ProductServices.listAllProducts();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
