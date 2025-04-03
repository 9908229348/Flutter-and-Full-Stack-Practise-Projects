import 'package:bolc_ecommerce/features/cart/bloc/cart_bloc_bloc.dart';
import 'package:bolc_ecommerce/features/home/models/home_product_data_model.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final ProductDataModel product;
  final CartBlocBloc cartBloc;
  const CartTile({
    super.key,
    required this.product,
    required this.cartBloc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      product.imageUrl,
                    ))),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            product.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            product.description,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ ${product.price}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        // homeBloc.add(HomeProductWishListButtonClickedEvent(
                        //     clickedProduct: product));
                      },
                      icon: Icon(Icons.favorite_border)),
                  IconButton(
                      onPressed: () {
                        // homeBloc.add(HomeProductCartButtonClickedEvent(
                        //     clickedProduct: product));
                      },
                      icon: Icon(Icons.shopping_bag_outlined)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}