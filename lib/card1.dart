import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = 'Maravilhoso';
  final String title = 'Rio de Janeiro';
  final String description = 'A cidade maravilhosa';
  final String tourist = 'Acabrina Boina';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 450,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: NetworkImage(
                'https://blog.123milhas.com/conheca-os-lugares-com-as-melhores-vistas-do-rio-de-janeiro/'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
