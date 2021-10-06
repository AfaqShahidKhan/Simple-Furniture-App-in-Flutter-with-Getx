import 'package:flutter/material.dart';
import 'package:furniture_app/Models/product.dart';
import 'package:furniture_app/Screens/Details/components/chat_and_add_to_cart.dart';
import 'package:furniture_app/Screens/Details/components/list_of_colors.dart';
import 'package:furniture_app/Screens/Details/components/product_image.dart';
import 'package:furniture_app/Utilities/connstants.dart';

class DBody extends StatelessWidget {
  const DBody({Key? key, this.product}) : super(key: key);
  final Product? product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              // height: 200,
              decoration: const BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: '${product!.id!}',
                      child: ProductPoster(
                        size: size,
                        image: product!.image!,
                      ),
                    ),
                  ),
                  ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      product!.title!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    "\$ ${product!.price!}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      product!.description!,
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  )
                ],
              ),
            ),
            ChatAndAddToCart(),
          ],
        ),
      ),
    );
  }
}
