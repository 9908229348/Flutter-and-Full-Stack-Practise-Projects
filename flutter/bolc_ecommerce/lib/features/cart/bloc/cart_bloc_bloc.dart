import 'package:bloc/bloc.dart';
import 'package:bolc_ecommerce/data/cart_items.dart';
import 'package:bolc_ecommerce/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'cart_bloc_event.dart';
part 'cart_bloc_state.dart';

class CartBlocBloc extends Bloc<CartBlocEvent, CartBlocState> {
  CartBlocBloc() : super(CartBlocInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
  }

  Future<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartBlocState> emit) async {
    emit(CartSuccessState(cartItems: cartItems));
  }
}
