import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/aplication/favorite_page/favorite_screen.dart';

import '../aplication/cart_page/cart_screen.dart';
import '../aplication/home_page/home_screen.dart';



class Bottom extends StatelessWidget {
  final int currentIndex;

  const Bottom({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
    return CurvedNavigationBar(
      backgroundColor: Colors.blue,
      animationCurve: Curves.slowMiddle,
      animationDuration: const Duration(milliseconds: 100),
      key: bottomNavigationKey,
      index: currentIndex,
      letIndexChange: (index) => true,
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        } else if(index==1){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const CartScreen()));
        }
        else if(index==2){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const FavoritesScreen()));
        }
      },
      items: <Widget>[
        Column(
          children: const [
            Icon(Icons.home),
            Text('Home'),
          ],
        ),
        Column(
          children: const [
            Icon(Icons.add_card),
            Text('card'),
          ],
        ),
        Column(
          children: const [
            Icon(Icons.favorite),
            Text('favorite'),
          ],
        ),
      ],
    );
  }
}

