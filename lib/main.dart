import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/aplication/home_page/home_state.dart';

import 'aplication/home_page/home_bloc.dart';
import 'aplication/home_page/home_event.dart';
import 'aplication/home_page/home_screen.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => ProductsBloc(
            ProductsInitialState(),
          )..add(LoadProducts())
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    ),
  );
}
