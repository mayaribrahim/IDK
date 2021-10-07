// ignore_for_file: prefer_const_constructors, unused_import, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:idk_app/config/theme.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Container(
        color: Colors.teal,
        padding: const EdgeInsets.symmetric(
          horizontal: 70,
          vertical: 10,
        ),
        // ignore: prefer_const_constructors
        child: Center(
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white)),
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, '/wishlist');
            })
      ],
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.0);
}
