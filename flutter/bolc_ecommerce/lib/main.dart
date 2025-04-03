import 'package:bolc_ecommerce/features/cart/bloc/cart_bloc_bloc.dart';
import 'package:bolc_ecommerce/features/home/bloc/home_bloc_bloc.dart';
import 'package:bolc_ecommerce/features/home/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CartBlocBloc>(create: (context) => CartBlocBloc()),
          BlocProvider<HomeBlocBloc>(create: (context) => HomeBlocBloc())
        ],
        child: Home(),
      ),
    );
  }
}
