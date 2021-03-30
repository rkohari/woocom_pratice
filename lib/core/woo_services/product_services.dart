import 'package:aaa/helpers/package_imports.dart';

class ProductServices {
  static createProduct() {
    var item = {
      "name": "testProduct",
      "type": "simple",
      "regular_price": "21.99",
      "description":
          "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
      "short_description":
          "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
      "categories": [
        {"id": 14}
      ],
      "images": [
        {
          "src":
              "http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg"
        }
      ],
      "attributes": [
        {
          "id": 6,
          "name": "Color",
          "position": 0,
          "visible": false,
          "variation": true,
          "options": ["Black", "Green"]
        },
        {
          "id": 0,
          "name": "Size",
          "position": 0,
          "visible": true,
          "variation": true,
          "options": ["S", "M"]
        }
      ],
    };

    WooComInit.wooComInit.woocommerce.post("products", item).whenComplete(() {
      logger.i("product added completd");
    });
  }



  static updateProduct() async {
    await WooComInit.wooComInit.woocommerce
        .put("products/130037", {"regular_price": "99"}).whenComplete(
            () => logger.i("Product updated sucessfully"));
  }

  static deleteProduct() async {
    await WooComInit.wooComInit.woocommerce
        .delete("products/130033", {"force": true}).whenComplete(
            () => logger.i("Product deleted sucessfully"));
  }


  static retriveParticularProdcut() async {
    Map<String, dynamic> wooProduct =
    await WooComInit.wooComInit.woocommerce.get("products/130033");
    print(wooProduct);
  }


  static Future listAllProducts() async {
    List<WooProduct> products =
        await WooComInit.wooComInit.woocommerce.getProducts();

    products.forEach((element) {
      logger.i("${element.id}    ${element.name}");
    });
    return products;
  }

}
