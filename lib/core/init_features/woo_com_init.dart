import 'package:aaa/helpers/package_imports.dart';

class WooComInit {
  static WooComInit wooComInit = WooComInit();

  final baseUrl = "https://woocom.vgts.tech";
  final consumer_key = "ck_dc7e410534faae393f08bd6a2337eedbbfd9be8e";
  final consumer_secret = "cs_2605527ed70743f4de342df0f8e2304b30a41918";
  WooCommerce woocommerce;


  initWooCom() {
    woocommerce = WooCommerce(
      baseUrl: baseUrl,
      consumerKey: consumer_key,
      consumerSecret: consumer_secret,
      isDebug: true,
    );
  }


}















class CouponController {
   createCoupon(WooCommerce woocommerce) {}

   retriveCoupon(WooCommerce woocommerce) {}

   updateCoupon(WooCommerce woocommerce) {}

   deleteCoupon(WooCommerce woocommerce) {}

   listAllCoupon(WooCommerce woocommerce) {}
}

class CustomerController {
  createCustomer(WooCommerce woocommerce) {}

  retriveCustomer(WooCommerce woocommerce) {}

  updateCustomer(WooCommerce woocommerce) {}

  deleteCustomer(WooCommerce woocommerce) {}

  listAllCustomer(WooCommerce woocommerce) {}
}






