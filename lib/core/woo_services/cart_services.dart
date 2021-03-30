import 'package:aaa/helpers/package_imports.dart';


class CartServices {


  static addToCart(String productId,String productQuantity) async {
    var wooCartItem = await WooComInit.wooComInit.woocommerce.addToMyCart(
        itemId: "130037", quantity: "2",).whenComplete(() =>
        logger.i("product sucessfully added to the cart"));
  }

  static  listAllProductsInCart()
  async  {
      await WooComInit.wooComInit.woocommerce.getMyCart().then((value) => logger.i(value));
    }


}
