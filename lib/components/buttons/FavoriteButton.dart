import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
      backgroundColor: Colors.redAccent,
    );
  }
}
