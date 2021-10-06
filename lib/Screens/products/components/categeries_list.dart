import 'package:flutter/material.dart';
import 'package:furniture_app/Utilities/connstants.dart';
import 'package:get/get.dart';

class CategoryList extends StatelessWidget {
  CategoryList({Key? key}) : super(key: key);
  Rxn<int> selectIndex = Rxn<int>(0);
  // ignore: non_constant_identifier_names
  var listCategories = ['All', 'Sofa', 'Park Bench', 'ArmChair'].obs;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listCategories.value.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              selectIndex.value = index;
              // print(selectIndex.value.toString());
            },
            child: Obx(
              () => Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    left: kDefaultPadding,
                    right: index == listCategories.value.length - 1
                        ? kDefaultPadding
                        : 0),
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                  color: index == selectIndex.value
                      ? Colors.white.withOpacity(0.4)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  listCategories.value[index],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ));
  }
}
