import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/Utilities/connstants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.onChange,
  }) : super(key: key);
  final ValueChanged onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: onChange,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          hintText: "Search",
          hintStyle: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
