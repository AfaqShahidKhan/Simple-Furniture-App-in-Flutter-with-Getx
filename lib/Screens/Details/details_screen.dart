import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Models/product.dart';
import 'package:furniture_app/Screens/Details/components/body.dart';
import 'package:furniture_app/Utilities/connstants.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  final Product? product;
  const DetailScreen({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: buildAppBar(context),
        body: DBody(
          product: product,
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(
          left: kDefaultPadding,
        ),
        onPressed: () {
          Get.back();
        },
        icon: SvgPicture.asset("assets/icons/back.svg"),
      ),
      centerTitle: false,
      title: Text(
        "Back".toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/cart_with_item.svg"),
        ),
      ],
    );
  }
}
