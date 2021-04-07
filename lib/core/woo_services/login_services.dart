


import 'package:aaa/helpers/package_imports.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class LoginControl {
  static String authUrl = "https://woocom.vgts.tech/wp-json/jwt-auth/v1/token/";

  static var client=http.Client();
  static Future validateLogin(String userName, String pwd) async {

 Map<String,String> headers={
   "content-type":"application/x-www-form-urlencoded"
 }; 
 
// var responce=await client.post(authUrl,headers: headers,body: {"username":"hari","password":"123456"});
  
// print(responce.body);

    try {
      var responce =await  Dio().post(
        authUrl,
        data: {"username": userName, "password": pwd},
        options: new Options(
          headers: {
            HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded"
          },
        ),
      );
      logger.i(responce);
    } catch (e) {}

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
    //     username: "hari",
    //     email: "harikrishnarko007@gmail.com",
    //     password: "123456");
    // await  WooComInit.wooComInit.woocommerce.registerNewWpUser(user: user).then((value){
    //   logger.i(value);
    // });

    WooCustomer wooCustomer =WooCustomer(username: "hari",email: "harikrishnarko007@gmail.com",password: "123456");
    await WooComInit.wooComInit.woocommerce.createCustomer(wooCustomer);


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



    // WooComInit.wooComInit.woocommerce.get("http://me.local.com/wp-json/wc/v2/customers").then((value) => print(value));
  }


}
