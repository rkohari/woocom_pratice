


import 'package:aaa/helpers/package_imports.dart';

class Injection extends Bindings
{
  @override
  void dependencies() {

    logger.i("dependencies started exeution");
    WooComInit.wooComInit.initWooCom();
    logger.i("dependencies finished exeution");



  }

}