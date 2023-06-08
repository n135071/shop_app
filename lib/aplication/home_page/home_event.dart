import 'package:equatable/equatable.dart';

import '../../models/shop_model.dart';

class ProductsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadProducts extends ProductsEvent {}

class AddToCart extends ProductsEvent {
  final Prudact prudact;

  AddToCart({required this.prudact});

  @override
  List<Object?> get props => [];
}

class RemoveCart extends ProductsEvent {
  final Prudact prudact;

  RemoveCart({required this.prudact});

  @override
  List<Object?> get props => [];
}
class Favorites extends ProductsEvent{}

class AddToFavorite extends ProductsEvent{
  final Prudact prudact;

  AddToFavorite({required this.prudact});
}
class RemoveFromFavorite extends ProductsEvent{
  final Prudact prudact;

  RemoveFromFavorite({required this.prudact});
}
