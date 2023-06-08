import 'package:equatable/equatable.dart';

import '../../models/shop_model.dart';


class ProductsState  {
  final bool isFavorite;
  const ProductsState({this.isFavorite = false});

}

class ProductsInitialState extends ProductsState {

}

class ProductsLoading extends ProductsState {}

class ProductsCompleted extends ProductsState {
  final List history;

  const ProductsCompleted({required this.history});
}

class ProductsFailed extends ProductsState {
  final String errorMessage;

  const ProductsFailed({required this.errorMessage});
}

class AddFavorite extends ProductsState{
  final Prudact prudact;


  AddFavorite(this.prudact);
}
class RemoveFavorite extends ProductsState{
  final Prudact prudact;

  RemoveFavorite(this.prudact);
}
class addCart extends ProductsState {
  final Prudact prudact;

  const addCart(this.prudact);
}

class removeCart extends ProductsState {
  final Prudact prudact;

  const removeCart(this.prudact);
}

