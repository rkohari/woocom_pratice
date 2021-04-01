import 'package:aaa/helpers/package_imports.dart';

class CartServices {
  static addToCart(String productId, String productQuantity) async {
    logger.i(WooComInit.wooComInit.woocommerce.authToken);
    await WooComInit.wooComInit.woocommerce
        .addToMyCart(
          itemId: "130037",
          quantity: "2",
        )
        .whenComplete(() => logger.i("product sucessfully added to the cart"));

// await WooComInit.wooComInit.woocommerce.isCustomerLoggedIn().then((value) => logger.i(value));
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

  static loginCustomer() async {
    String a = await WooComInit.wooComInit.woocommerce.loginCustomer(
      username: "rko",
      password: "123456",
    );
    logger.e(a);
  }
}
