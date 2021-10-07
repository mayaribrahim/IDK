// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.imageUrl,
    required this.category,
    required this.isPopular,
    required this.isRecommended,
    required this.price,
  });

  static Product fromsnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap['name'],
      category: snap['category'],
      imageUrl: snap['imageUrl'],
      price: snap['price'],
      isPopular: snap['isPopular'],
      isRecommended: snap['isRecommended'],
    );
    return product;
  }

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isRecommended,
        isPopular,
      ];

  static List<Product> products = [
    Product(
      name: 'Dresses',
      imageUrl:
          'https://images.pexels.com/photos/1006997/pexels-photo-1006997.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      category: 'Dresses',
      price: 10.33,
      isPopular: false,
      isRecommended: true,
    ),
    Product(
      name: 'Dresses',
      imageUrl:
          'https://images.pexels.com/photos/2784815/pexels-photo-2784815.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
      category: 'Dresses',
      price: 12.33,
      isPopular: false,
      isRecommended: true,
    ),
    Product(
      name: 'Pants',
      imageUrl:
          'https://images.pexels.com/photos/2294356/pexels-photo-2294356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      category: 'Pants',
      price: 8.33,
      isPopular: false,
      isRecommended: true,
    ),
    Product(
      name: 'Accessory',
      imageUrl:
          'https://images.pexels.com/photos/965981/pexels-photo-965981.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      category: 'Accessory',
      price: 10.33,
      isPopular: false,
      isRecommended: true,
    ),
    Product(
      name: 'Accessory',
      imageUrl:
          'https://images.pexels.com/photos/265804/pexels-photo-265804.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      category: 'Accessory',
      price: 5.23,
      isPopular: false,
      isRecommended: true,
    ),
    Product(
      name: 'Shoes',
      imageUrl:
          'https://images.pexels.com/photos/3782786/pexels-photo-3782786.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      category: 'Shoes',
      price: 30.0,
      isPopular: true,
      isRecommended: true,
    ),
    Product(
      name: 'Shoes',
      imageUrl:
          'https://images.pexels.com/photos/3389419/pexels-photo-3389419.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      category: 'Shoes',
      price: 40.0,
      isPopular: true,
      isRecommended: true,
    ),
    Product(
      name: 'Shoes',
      imageUrl:
          'https://images.pexels.com/photos/8923186/pexels-photo-8923186.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      category: 'Shoes',
      price: 20.0,
      isPopular: true,
      isRecommended: true,
    ),
  ];
}
