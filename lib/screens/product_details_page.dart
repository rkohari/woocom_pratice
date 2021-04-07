import 'package:aaa/helpers/package_imports.dart';

class ProductDetailsPage extends StatelessWidget {
  WooProduct wooProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () async {
              //  await CartServices.listAllProductsInCart();

            },
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image(
                image: NetworkImage(wooProduct.images[0].src),
              ),
            ),
            Text(wooProduct.name),
            Text(
              "₹ ${wooProduct.price}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () async {
          var options = {
            'key': 'rzp_test_bPCHR7ux6VjRK6',
            'amount': 200 * 100,
            'name': 'Potato Chip',
            'description': 'cool Potato chips packet',
            // 'prefill': {
            //   'contact': '8888888888',
            //   'email': 'test@razorpay.com'
            // }
          };
          WooComInit.wooComInit.razorpay.open(options);

          print("Add to cart button is pressed");
          //  CartServices.addToCart(wooProduct.id.toString(), 2.toString());
          //  CartServices.createCustomer();
        },
        child: Container(
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white54,
            border: Border.all(color: Colors.black12),
          ),
          child: Text(
            "Pay Now",
            style: TextStyle(
                color: Colors.green, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  ProductDetailsPage({@required this.wooProduct});
}
