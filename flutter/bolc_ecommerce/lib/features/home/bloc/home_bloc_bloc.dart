import 'package:bloc/bloc.dart';
import 'package:bolc_ecommerce/data/cart_items.dart';
import 'package:bolc_ecommerce/data/groceries_data.dart';
import 'package:bolc_ecommerce/data/wishlist_items.dart';
import 'package:bolc_ecommerce/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBlocBloc() : super(HomeBlocInitial()) {
    on<HomeInitialEvent>(homeInitailEvent);
    on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);
    on<HomeProductWishListButtonClickedEvent>(
        homeProductWishListButtonClickedEvent);

    on<HomeCartButtonNavigateEvent>(homeCartButtonNavigateEvent);
    on<HomeWishListButtonNavigateEvent>(homeWishListButtonNavigateEvent);
  }

  Future<void> homeInitailEvent(
      HomeInitialEvent event, Emitter<HomeBlocState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(HomeLoadedSuccessState(
        products: GroceryData.groceryProducts
            .map((e) => ProductDataModel(
                  id: e['id'],
                  name: e['name'],
                  description: e['description'],
                  price: e['price'],
                  imageUrl: e['imageUrl'],
                ))
            .toList()));
  }

  Future<void> homeProductCartButtonClickedEvent(
      HomeProductCartButtonClickedEvent event,
      Emitter<HomeBlocState> emit) async {
    cartItems.add(event.clickedProduct);
    emit(HomeProductCartedActionState());
  }

  Future<void> homeProductWishListButtonClickedEvent(
      HomeProductWishListButtonClickedEvent event,
      Emitter<HomeBlocState> emit) async {
    wishlistItems.add(event.clickedProduct);
    emit(HomeProductItemWishListedActionState());
  }

  Future<void> homeCartButtonNavigateEvent(
      HomeCartButtonNavigateEvent event, Emitter<HomeBlocState> emit) async {
    emit(HomeNavigateToCartPageActionState());
  }

  Future<void> homeWishListButtonNavigateEvent(
      HomeWishListButtonNavigateEvent event,
      Emitter<HomeBlocState> emit) async {
    emit(HomeNavigateToWishListPageActionState());
  }
}
