import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_botton_navigation.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [ 
        Background(),
        _Homebody()
      ],
     ),
     bottomNavigationBar: CustomBottonNavigation(),

   );
  }
}

class _Homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          // Titulos
          PageTile(),
          // Card Tables
          CardTable()
        ],
      ),
    );
  }
}
