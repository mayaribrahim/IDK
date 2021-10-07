// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idk_app/blocs/cart/cart_bloc.dart';
import 'package:idk_app/blocs/wishlist/wishlist_bloc.dart';
import 'package:idk_app/blocs/checkout/checkout_bloc.dart';
import 'package:idk_app/config/app_router.dart';
import 'package:flutter/material.dart';
import 'package:idk_app/config/theme.dart';
import 'package:idk_app/repositories/category/category_repository.dart';
import 'package:idk_app/repositories/product/product_repository.dart';
import 'package:idk_app/repositories/checkout/checkout_repository.dart';
import 'blocs/category/category_bloc.dart';
import 'blocs/product/product_bloc.dart';
import 'screens/home/home_screen.dart';
import 'package:idk_app/screens/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
        BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
        BlocProvider(
          create: (_) => CategoryBloc(
            categoryRepository: CategoryRepository(),
          )..add(LoadCategories()),
        ),
        BlocProvider(
          create: (_) => ProductBloc(
            productRepository: ProductRepository(),
          )..add(
              LoadProducts(),
            ),
        )
      ],
      child: MaterialApp(
        title: 'IDK',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
