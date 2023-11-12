import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
      children: [
        const Image(image: AssetImage('assets/imgJp.jpg')),
        const Title(),
        const ButtonSection(),
         Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 35),
          child:  const Text('Sit nisi veniam esse minim dolor fugiat culpa dolore magna pariatur.Quis occaecat dolor tempor pariatur minim nisi dolor laboris veniam nisi proident consequat deserunt proident.'))
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tokio 03', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Localidad del primer impacto',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.deepPurpleAccent,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton(iconData: Icons.call,titulo: 'Call',),
        CustomButton(iconData: Icons.location_on_outlined,titulo: 'Route',),
        CustomButton(iconData: Icons.share,titulo: 'Share',),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData iconData;
  final String titulo;
  const CustomButton({
    super.key, required this.iconData, required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconData,color: Color.fromARGB(255, 195, 40, 222),size: 30,),
        Text(titulo),
      ],
    );
  }
}
