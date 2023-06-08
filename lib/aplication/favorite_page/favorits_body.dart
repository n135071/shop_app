import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../component/show_prudact_inscreen.dart';
import '../home_page/home_bloc.dart';
import '../home_page/home_event.dart';
import '../home_page/home_state.dart';

class FavoritesBody extends StatelessWidget {
  const FavoritesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductsBloc productsBloc = context.read<ProductsBloc>();

    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (BuildContext context, ProductsState state) {
        return ListView.builder(
            itemCount: productsBloc.favoriteLists.length,
            itemBuilder: (BuildContext context, int index) {
              return ShowProductInScreen(
                img: productsBloc.favoriteLists[index].image!,
                title: productsBloc.favoriteLists[index].title!,
                price: productsBloc.favoriteLists[index].price!,
                productsModel: productsBloc,
                index: index,
                function:()=> context.read<ProductsBloc>().add(RemoveFromFavorite(
                    prudact: productsBloc.favoriteLists[index])),
              );
            });
      },
    );
  }
}
