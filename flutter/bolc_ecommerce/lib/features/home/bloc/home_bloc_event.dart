// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc_bloc.dart';

@immutable
sealed class HomeBlocEvent {}

class HomeInitialEvent extends HomeBlocEvent {}

class HomeProductWishListButtonClickedEvent extends HomeBlocEvent {
  final ProductDataModel clickedProduct;
  HomeProductWishListButtonClickedEvent({
    required this.clickedProduct,
  });
}

class HomeProductCartButtonClickedEvent extends HomeBlocEvent {
  final ProductDataModel clickedProduct;
  HomeProductCartButtonClickedEvent({
    required this.clickedProduct,
  });
}

class HomeWishListButtonNavigateEvent extends HomeBlocEvent {}

class HomeCartButtonNavigateEvent extends HomeBlocEvent {}
