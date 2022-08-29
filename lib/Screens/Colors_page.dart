import 'package:flutter/material.dart';

import '../Models/ItemModel.dart';
import '../components/Numbers_Item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Item> colors = const [
    Item(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'black',
        sound: 'black.wav'),
    Item(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown',
        sound: 'brown.wav'),
    Item(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow',
        sound: 'dusty yellow.wav'),
    Item(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'gray',
        sound: 'gray.wav'),
    Item(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green',
        sound: 'green.wav'),
    Item(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red',
        sound: 'red.wav'),
    Item(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroi',
        enName: 'white',
        sound: 'white.wav'),
    Item(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow',
        sound: 'yellow.wav'),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Colors'),
          backgroundColor: Color(0xff46322B),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return NumbersItem(
              number: colors[index],
              color: Color(0xff7D40A2),
              ItemType: 'colors',

            );
          },
          itemCount: colors.length,
        )
    );
  }
}
