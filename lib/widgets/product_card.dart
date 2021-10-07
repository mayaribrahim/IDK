// ignore_for_file: prefer_const_constructors, unused_import, duplicate_ignore

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:idk_app/blocs/cart/cart_bloc.dart';
// ignore: unused_import
import 'package:idk_app/blocs/wishlist/wishlist_bloc.dart';
import 'package:idk_app/models/models.dart';
import 'package:idk_app/models/wishlist_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  final double leftPositioned;
  final bool isWishlist;
  const ProductCard({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
    this.leftPositioned = 5,
    this.isWishlist = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product);
      },
      child: Stack(
        children: <Widget>[
          // ignore: sized_box_for_whitespace
          Container(
            width: widthValue,
            height: 150,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60,
            left: leftPositioned,
            child: Container(
              width: widthValue - 5 - leftPositioned,
              height: 80,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(50),
              ),
            ),
          ),
          Positioned(
            top: 65,
            left: leftPositioned + 5,
            child: Container(
              width: widthValue - 15 - leftPositioned,
              height: 70,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$${product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
