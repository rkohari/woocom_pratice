import 'package:aaa/helpers/package_imports.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class WooComInit {
  static WooComInit wooComInit = WooComInit();

  final baseUrl = "https://woocom.vgts.tech";
  final consumer_key = "ck_dc7e410534faae393f08bd6a2337eedbbfd9be8e";
  final consumer_secret = "cs_2605527ed70743f4de342df0f8e2304b30a41918";
  WooCommerce woocommerce;
  Razorpay razorpay;

  initWooCom() {
    razorpay = Razorpay();
    woocommerce = WooCommerce(

      baseUrl: baseUrl,
      consumerKey: consumer_key,
      consumerSecret: consumer_secret,
      isDebug: true,
   //

    );

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }


  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
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






