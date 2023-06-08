import 'package:flutter/material.dart';
import 'package:shop_app/component/bottom_navigation_bar.dart';

import 'favorits_body.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites Page'),
        centerTitle: true,
      ),
      bottomNavigationBar: const Bottom(currentIndex: 2),
      body: const FavoritesBody(),
    );
  }
}
