import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/Utilities/connstants.dart';

class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: Color(0xfffcbf1e),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: 18,
          ),
          const SizedBox(
            width: kDefaultPadding / 2,
          ),
          const Text(
            "Chat",
            style: TextStyle(color: Colors.white),
          ),
          // it covers all available space
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/shopping-bag.svg",
              // I don't know why but this is not working
              semanticsLabel: ("Add to Cart"),
            ),
          ),
        ],
      ),
    );
  }
}
