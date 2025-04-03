import 'package:bolc_ecommerce/features/cart/bloc/cart_bloc_bloc.dart';
import 'package:bolc_ecommerce/features/cart/ui/carttile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final CartBlocBloc cartBloc = CartBlocBloc();

  @override
  void initState() {
    cartBloc.add(CartInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart Items'),
        ),
        body: BlocConsumer<CartBlocBloc, CartBlocState>(
          listener: (context, state) {},
          listenWhen: (previous, current) => current is CartActionState,
          buildWhen: (previous, current) => current is! CartActionState,
          builder: (context, state) {
            switch (state.runtimeType) {
              case CartSuccessState:
                final successState = state as CartSuccessState;
                return ListView.builder(
                    itemCount: successState.cartItems.length,
                    itemBuilder: (context, index) {
                      return CartTile(
                        product: successState.cartItems[index],
                        cartBloc: cartBloc,
                      );
                    });
            }
            return Container();
          },
        ));
  }
}
