import 'package:aaa/helpers/package_imports.dart';

class CartServices {
  static addToCart(String productId, String productQuantity) async {

    await WooComInit.wooComInit.woocommerce
        .addToMyCart(
          itemId: "130040",
          quantity: "2",
        )
        .whenComplete(() => logger.i("product sucessfully added to the cart"));


  }

  static listAllProductsInCart() async {
    await WooComInit.wooComInit.woocommerce
        .getMyCart()
        .then((value) => logger.i(value));
  }

  static createCustomer() {
    WooCustomer user = WooCustomer(
        username: "rko",
        password: "123456",
        email: "harikrishnarko007@gmail.com");
  }


}
