import 'package:aaa/helpers/bindings.dart';
import 'package:aaa/helpers/package_imports.dart';
import 'package:aaa/screens/home_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      initialBinding: Injection()
    );
  }
}
