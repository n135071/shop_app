import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:shop_app/models/response_model.dart';
import '../../data/product_reposetry.dart';
import '../../models/shop_model.dart';
import 'home_event.dart';
import 'home_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(super.initialState) {
    on<LoadProducts>(getAllProduct);
    on<AddToCart>(addtoCard);
    on<RemoveCart>(removesCart);
    on<AddToFavorite>(addFavorite);
    on<RemoveFromFavorite>(removeFavorite);
  }

  List<Prudact> productLists = [];
  List<Prudact> cartLists = [];
  List<Prudact> favoriteLists = [];

  void getAllProduct(LoadProducts event, Emitter<ProductsState> emit) async {
    emit(ProductsLoading());
    ProductRepository productRepository = ProductRepository();
    ResponseModel responseModel = await productRepository.getProduct();
    if (responseModel.hasError) {
      emit(ProductsFailed(errorMessage: responseModel.message));
    } else {
      emit(ProductsCompleted(history: responseModel.data));
      productLists = responseModel.data;
    }
  }

  void addtoCard(AddToCart event, Emitter<ProductsState> emit) {
    if (state is ProductsCompleted) {
      cartLists.add(event.prudact);

      emit(ProductsCompleted(history: productLists));
    }
  }

  void removesCart(RemoveCart event, Emitter<ProductsState> emit) {
    if (state is ProductsCompleted) {
      cartLists.remove(event.prudact);
      emit(ProductsCompleted(history: productLists));
    }
  }

  void addFavorite(AddToFavorite event, Emitter<ProductsState> emit) {
    if (state is ProductsCompleted) {
      favoriteLists.add(event.prudact);
      emit(ProductsCompleted(history: productLists));
    }
  }

  void removeFavorite(RemoveFromFavorite event, Emitter<ProductsState> emit) {
    if (state is ProductsCompleted) {
      favoriteLists.remove(event.prudact);
      emit(ProductsCompleted(history: productLists));
    }
  }
}
