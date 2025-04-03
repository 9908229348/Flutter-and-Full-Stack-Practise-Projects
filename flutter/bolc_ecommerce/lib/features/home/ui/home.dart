// ignore_for_file: type_literal_in_constant_pattern

import 'package:bolc_ecommerce/features/cart/ui/cart_page.dart';
import 'package:bolc_ecommerce/features/home/bloc/home_bloc_bloc.dart';
import 'package:bolc_ecommerce/features/home/ui/product_tile_widget.dart';
import 'package:bolc_ecommerce/features/wishlist/ui/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBlocBloc homeBloc = HomeBlocBloc();

  @override
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CartPage()));
              
        } else if (state is HomeNavigateToWishListPageActionState) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => WishListPage()));
        } else if (state is HomeProductItemWishListedActionState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Item wishlisted')));
        } else if (state is HomeProductCartedActionState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Item Carted')));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case HomeErrorState:
            return Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            );
          case HomeLoadedSuccessState:
            var successState = state as HomeLoadedSuccessState;

            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.teal,
                title: Text('Groceries'),
                actions: [
                  IconButton(
                      onPressed: () {
                        homeBloc.add(HomeWishListButtonNavigateEvent());
                      },
                      icon: Icon(Icons.favorite_border)),
                  IconButton(
                      onPressed: () {
                        homeBloc.add(HomeCartButtonNavigateEvent());
                      },
                      icon: Icon(Icons.shopping_bag_outlined)),
                ],
              ),
              body: ListView.builder(
                  itemCount: successState.products.length,
                  itemBuilder: (context, index) {
                    return ProductTileWidget(
                      product: successState.products[index],
                      homeBloc: homeBloc,
                    );
                  }),
            );
          default:
            return SizedBox();
        }
      },
    );
  }
}
