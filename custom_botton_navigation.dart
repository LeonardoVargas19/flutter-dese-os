import 'package:flutter/material.dart';

class CustomBottonNavigation extends StatelessWidget {
  const CustomBottonNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor:    const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor:const  Color.fromRGBO(116, 117, 157, 1),
      items:const [
         BottomNavigationBarItem(icon:Icon(Icons.calendar_month_outlined),label:'Calendario'),
         BottomNavigationBarItem(icon:Icon(Icons.stacked_line_chart_rounded),label:'Estadisticas' ),
         BottomNavigationBarItem(icon:Icon(Icons.supervised_user_circle_sharp),label:'Usuarios' ),
      ]
    );
  }
}
