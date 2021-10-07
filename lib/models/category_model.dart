// ignore_for_file: prefer_const_constructors, empty_constructor_bodies

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        name,
        imageUrl,
      ];
  static Category fromsnapshot(DocumentSnapshot snap) {
    Category category = Category(
      name: snap['name'],
      imageUrl: snap['imageUrl'],
    );
    return category;
  }

  static List<Category> category = [
    Category(
        name: 'Dresses',
        imageUrl:
            'https://images.pexels.com/photos/8995989/pexels-photo-8995989.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
    Category(
        name: 'Pants',
        imageUrl:
            'https://images.pexels.com/photos/4210866/pexels-photo-4210866.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
    Category(
        name: 'Accessory',
        imageUrl:
            'https://images.pexels.com/photos/265804/pexels-photo-265804.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
    Category(
        name: 'Shoes',
        imageUrl:
            'https://images.pexels.com/photos/3782786/pexels-photo-3782786.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
  ];
}
