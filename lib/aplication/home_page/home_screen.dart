import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/aplication/home_page/home_event.dart';
import 'package:shop_app/aplication/home_page/home_state.dart';
import 'package:shop_app/component/bottom_navigation_bar.dart';
import '../cart_page/cart_screen.dart';
import 'home_bloc.dart';
import 'home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TempWidget();
  }
}

class TempWidget extends StatelessWidget {
  const TempWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottom(currentIndex: 0),
      appBar: AppBar(
        leading: Container(),
        title: const Text('HomePage'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                     context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen()));
              },
              icon: const Icon(Icons.add_card))
        ],
        centerTitle: true,
      ),
      body: const HomeBody(),
    );
  }
}
