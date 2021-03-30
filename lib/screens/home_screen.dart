import 'package:aaa/helpers/package_imports.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "WooCom ",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () async{
              print("button is pressed");
           await ProductServices.updateProduct();
            },
            color: Colors.white,
          )
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: ProductServices.listAllProducts(),
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              List<WooProduct> products = snapshot.data;
              return GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0),
                itemBuilder: (BuildContext context, int index) {
                  return ProductWidget(wooProduct: products[index]);
                },
              );
            }

            return Text("No Data");
          },
        ),
      ),
    );
  }
}
