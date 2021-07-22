import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:supermarket/Pages/Other/home_page.dart';
import 'package:supermarket/Pages/Other/offers.dart';
import 'package:supermarket/Pages/User/wishlist.dart';


Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/menubg.png'), fit: BoxFit.cover)),
      child: FadedSlideAnimation(
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 44.0),
              child: Text(
                'Anil Nahar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            buildListTile(context, Icons.home, "Home", HomePage()),
            buildListTile(context, Icons.account_box, "Profile", HomePage()),
            buildListTile(context, Icons.shopping_cart, "Order", HomePage()),
            buildListTile(context, Icons.local_offer, "Offers", OffersPage()),
            buildListTile(context, Icons.favorite, "WishList", MyWishList()),
            ListTile(
              onTap: () {
                Phoenix.rebirth(context);
              },
              leading: Icon(
                Icons.subdirectory_arrow_right,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                "logout",
                style: TextStyle(letterSpacing: 2),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    ),
  );
}

ListTile buildListTile(
    BuildContext context, IconData icon, String title, Widget onPress) {
  return ListTile(
    onTap: () {
      Navigator.pop(context);
//      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => onPress));
    },
    leading: Icon(
      icon,
      color: Theme.of(context).primaryColor,
    ),
    title: Text(
      title,
      style: TextStyle(letterSpacing: 2),
    ),
  );
}
