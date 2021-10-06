import 'package:flutter/material.dart';
import 'package:furniture_app/Models/product.dart';
import 'package:furniture_app/Utilities/connstants.dart';

class ProfuctCard extends StatelessWidget {
  final int? itemIndex;
  final Product? product;

  final VoidCallback? press;

  const ProfuctCard({Key? key, this.itemIndex, this.product, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //This will return the total size of height and width if sccreen
    Size size = MediaQuery.of(context).size;
    // Get.height;
    // Get.width;
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      // color: Colors.blueAccent,
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              // Our backgrounds
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: itemIndex!.isEven ? kBlueColor : kSecondaryColor,
                boxShadow: const [kDefaultShadow],
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            //Our product image
            Positioned(
              top: 0,
              right: -4,
              child: Hero(
                tag: '${product!.id!}',
                child: Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160,
                  width: 150,

                  child: Image.asset(
                    product!.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 0,
                bottom: 0,
                child: SizedBox(
                  height: 136,
                  // we have set the width - 200 as our image have the width of 200
                  width: size.width - 150,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //  const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(product!.title!,
                            style: Theme.of(context).textTheme.button),
                      ),
                      //  spacer is use to cover available space
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5,
                            vertical: kDefaultPadding / 4),
                        decoration: const BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                        child: Text(
                          "  \$ ${product!.price!} ",
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
