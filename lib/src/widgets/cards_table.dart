import 'package:flutter/material.dart';

class CardsTable extends StatelessWidget {
  const CardsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.purple,
              icon: Icons.shop,
              text: 'Shopping',
            ),
            _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.cloud,
              text: 'Bill',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.deepPurple,
              icon: Icons.movie_creation_outlined,
              text: 'Entertainment',
            ),
            _SingleCard(
              color: Colors.green,
              icon: Icons.shopping_basket_outlined,
              text: 'Grocery',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      color: const Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20),
    );

    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: boxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
