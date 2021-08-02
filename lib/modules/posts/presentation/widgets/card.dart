import 'package:flutter/material.dart';

class CardPosts extends StatelessWidget {
  final String tittle;
  final String body;
  final VoidCallback? onTap;

  const CardPosts(
    this.tittle,
    this.body, {
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        tittle,
      ),
      subtitle: Text(
        body,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
