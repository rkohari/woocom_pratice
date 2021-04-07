
import 'package:aaa/helpers/package_imports.dart';



void main() async{
 await  WPJsonAPI.instance.initWith(baseUrl: "https://woocom.vgts.tech");
 WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
 debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      initialBinding: Injection()
    );
  }
}
