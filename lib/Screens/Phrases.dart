import 'package:flutter/material.dart';
import 'package:language_learning_app/Models/ItemModel.dart';

import '../components/Numbers_Item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Item> phrases = const [
    Item(
        jpName: 'Kimasu ka',
        sound: 'are_you_coming.wav',
        enName: 'are you coming'),
    Item(
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        sound: 'dont_forget_to_subscribe.wav',
        enName: 'don\'t forget to subscribe'),
    Item(
        sound: 'how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling'),
    Item(
        sound: 'i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime'),
    Item(
        sound: 'i_love_programming.wav',
        jpName: 'GWatashi wa puroguramingu ga daisukidesu',
        enName: 'i love programming'),
    Item(
        sound: 'programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'programming is easy'),
    Item(
        sound: 'what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka',
        enName: 'what is your name'),
    Item(
        sound: 'where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'what are you going'),
    Item(
        sound: 'yes_im_coming.wav',
        jpName: 'Hai, kimasu',
        enName: 'yes im coming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Phrases'),
          backgroundColor: Color(0xff46322B),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return PhraseItem(
              phrase: phrases[index],
              color: Color(0xff47A5CB),
              ItemType: 'phrases',
            );
          },
          itemCount: phrases.length,
        ));
  }
}
