import 'package:aaa/helpers/package_imports.dart';

class ProductWidget extends StatelessWidget {
  WooProduct wooProduct;

  ProductWidget({@required this.wooProduct});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

       Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductDetailsPage(wooProduct:wooProduct)));

      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black12),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 130,
              child: Image(
                image: NetworkImage(wooProduct.images[0].src),
                fit: BoxFit.cover,
              ),
            ),
            Text(
              wooProduct.name,
              overflow: TextOverflow.fade,
              maxLines: 1,
            ),
            Text(
              wooProduct.price,
              overflow: TextOverflow.fade,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
