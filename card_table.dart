import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          const _SingleCard(icon: Icons.app_registration_outlined,color: Color.fromARGB(255, 180, 152, 229),title: 'Utilities',),
          _SingleCard(icon: Icons.train_sharp,color: Colors.pink.shade200,title: 'Transportation',),
        ]),

        const TableRow(children: [
          _SingleCard(icon: Icons.movie_creation_outlined,color: Color.fromARGB(255, 215, 72, 225),title: 'Movie',),
          _SingleCard(icon: Icons.transfer_within_a_station_sharp,color: const Color.fromARGB(255, 235, 21, 92),title: 'Transfer',),
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;

  const _SingleCard(
      {super.key,
      required this.icon,
      required this.color,
      required this.title});

  @override
  Widget build(BuildContext context) {
   
    return _CardBackground(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar( backgroundColor: color, child: Icon(icon,color: Colors.white, ),
          radius: 30,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(color: color, fontSize: 18),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
