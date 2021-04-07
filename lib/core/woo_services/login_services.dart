
import 'package:aaa/helpers/package_imports.dart';
import 'package:http/http.dart' as http;
class LoginControl {
  static String authUrl = "https://woocom.vgts.tech/wp-json/jwt-auth/v1/token/";

  static var client=http.Client();
  static Future validateLogin(String userName, String pwd) async {

 Map<String,String> headers={
   "content-type":"application/x-www-form-urlencoded"
 }; 
 
 var responce=await client.post(authUrl,headers: headers,body: {"username":"hari","password":"123456"});
  
 print(responce.body);

    // try {
    //   var responce = Dio().post(
    //     authUrl,
    //     data: {"username": userName, "password": pwd},
    //     options: new Options(
    //       headers: {
    //         HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded"
    //       },
    //     ),
    //   );
    //   logger.i(responce);
    // } catch (e) {}

    // try {
    //   WPUserLoginResponse wpUserLoginResponse = await WPJsonAPI.instance
    //       .api((request) => request.wpLogin(
    //       email: "harikrishnarko007@gmail.com",
    //       password: "123456",
    //   ));
    // } on Exception catch (e) {
    //   print(e);
    // }


    // final token = await WooComInit.wooComInit.woocommerce
    //     .loginCustomer(username:userName, password: pwd);
    //   bool a=await WooComInit.wooComInit.woocommerce.isCustomerLoggedIn();
    //   logger.i("is user is already login ? $a");
  }

  //working ,this method creates wp account
  static createAccount(String name, String gmail, String pwd) async {
    // WooUser user = WooUser(
    //     username: "rko",
    //     email: "harikrishnarko007@gmail.com",
    //     password: "123456");
    // await  WooComInit.wooComInit.woocommerce.registerNewWpUser(user: user).then((value){
    //   logger.i(value);
    // });
    // await WooComInit.wooComInit.woocommerce.createCustomer(
    //   WooCustomer(username: name, password: pwd, email: gmail),
    // );

    const data = {
      "email": "venkatvenkat2810@gmail.com",
      "first_name": "venkat",
      "last_name": "venkat",
      "username": "venkat",
      "password":"123456",
      "billing": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US",
        "email": "john.doe@example.com",
        "phone": "(555) 555-5555"
      },
      "shipping": {
        "first_name": "John",
        "last_name": "Doe",
        "company": "",
        "address_1": "969 Market",
        "address_2": "",
        "city": "San Francisco",
        "state": "CA",
        "postcode": "94103",
        "country": "US"
      }
    };

   WooComInit.wooComInit.woocommerce.get("http://me.local.com/wp-json/wc/v2/customers").then((value) => print(value));

  }

  //working
  getParticularCustomer() async {
    await WooComInit.wooComInit.woocommerce
        .getCustomers(search: "Abeller")
        .then(
      (value) {
        logger.i(value);
      },
    );
  }

  //working
  getAllCustomers() async {
    await WooComInit.wooComInit.woocommerce
        .getCustomers(search: "Abeller")
        .then(
      (value) {
        logger.i(value);
      },
    );
  }


}
