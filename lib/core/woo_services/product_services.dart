
import 'package:aaa/helpers/package_imports.dart';

class ProductServices {
  static createOrder() {

    var item={
      "name": "rko",
      "type": "simple",
      "regular_price": "21.99",
      "description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
      "short_description": "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
      "categories": [
        {
          "id": 14
        }
      ],
      "images": [
        {
          "src": "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg"
        }
      ]
    };

    WooComInit.wooComInit.woocommerce.post("products", item).whenComplete(() {

      logger.i("product added completd");

    });

  }

 static retriveOrder() {}

 static updateOrder() {}

 static deleteOrder() async{
   await WooComInit.wooComInit.woocommerce.delete("products/195", {"force":true}).then((value) {

     print(value);
   });
    
 }



 static Future listAllProducts() async {

    print("getProducts funtion called");
    List<WooProduct> products= await WooComInit.wooComInit.woocommerce.getProducts();

    products.forEach((element) {logger.i("${element.id}    ${element.name}"); });
    return products;

  }
}
