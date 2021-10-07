// ignore_for_file: no_duplicate_case_values, avoid_print, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idk_app/models/category_model.dart';
import 'package:idk_app/models/models.dart';
import 'package:idk_app/screens/catalog/catalog_screen.dart';
import 'package:idk_app/screens/login/login_screen.dart';
import 'package:idk_app/screens/product/product_screen.dart';
import 'package:idk_app/screens/screens.dart';
import 'package:idk_app/screens/signup/signup_screen.dart';
import 'package:idk_app/screens/wishlist/wishlist_scree.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route : ${settings.name}');

    switch (settings.name) {
      case '/login':
        return LoginScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case SignupScreen.routeName:
        return SignupScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Error')),
      ),
    );
  }
}
