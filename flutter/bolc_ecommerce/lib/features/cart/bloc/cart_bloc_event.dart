part of 'cart_bloc_bloc.dart';

@immutable
sealed class CartBlocEvent {}

class CartInitialEvent extends CartBlocEvent{

}

class CartRemoveFromCartEvent extends CartBlocEvent{}
