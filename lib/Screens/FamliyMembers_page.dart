import 'package:flutter/material.dart';

import 'package:language_learning_app/components/Numbers_Item.dart';

import '../Models/ItemModel.dart';

class FamliyMembersPage extends StatelessWidget {
  const FamliyMembersPage({Key? key}) : super(key: key);
  final List<Item> familymembers = const [
    Item(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Otōsan',
        enName: 'father',
        sound: 'father.wav'),
    Item(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother',
        sound: 'mother.wav'),
    Item(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojīsan',
        enName: 'grand father',
        sound: 'grand father.wav'),
    Item(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grand moher',
        sound: 'grand mother.wav'),
    Item(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son',
        sound: 'son.wav'),
    Item(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter',
        sound: 'daughter.wav'),
    Item(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nīsan',
        enName: 'older brother',
        sound: 'older bother.wav'),
    Item(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Onēsan',
        enName: 'older sister',
        sound: 'older sister.wav'),
    Item(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother',
        sound: 'younger brohter.wav'),
    Item(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger sister',
        sound: 'younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FamilyMembers'),
          backgroundColor: Color(0xff46322B),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return NumbersItem(
              number: familymembers[index],
              color: Color(0xff528032),
              ItemType: 'family_members',
            );
          },
          itemCount: familymembers.length,
        ));
  }
}
