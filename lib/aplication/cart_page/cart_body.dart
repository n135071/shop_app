import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../component/show_prudact_inscreen.dart';
import '../home_page/home_bloc.dart';
import '../home_page/home_event.dart';
import '../home_page/home_state.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductsBloc productsBloc = context.read<ProductsBloc>();

    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (BuildContext context, ProductsState state) {
        return ListView.builder(
            itemCount: productsBloc.cartLists.length,
            itemBuilder: (BuildContext context, int index) {
              return ShowProductInScreen(
                img: productsBloc.cartLists[index].image!,
                title: productsBloc.cartLists[index].title!,
                price: productsBloc.cartLists[index].price!,
                productsModel: productsBloc,
                index: index,
                function:()=> productsBloc
                    .add(RemoveCart(prudact: productsBloc.cartLists[index])),
              );
            });
      },
    );
  }
}
