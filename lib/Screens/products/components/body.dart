import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/Components/search_box.dart';
import 'package:furniture_app/Models/product.dart';
import 'package:furniture_app/Screens/Details/components/body.dart';
import 'package:furniture_app/Screens/Details/details_screen.dart';
import 'package:furniture_app/Screens/products/components/categeries_list.dart';
import 'package:furniture_app/Screens/products/components/product_card.dart';
import 'package:furniture_app/Utilities/connstants.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SearchBox(
            onChange: (value) {},
          ),
          CategoryList(),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProfuctCard(
                  itemIndex: index,
                  product: products[index],
                  press: () {
                    Get.to(() => DetailScreen(
                          product: products[index],
                        ));
                  },
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
