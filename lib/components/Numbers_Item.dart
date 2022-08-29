import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../Models/ItemModel.dart';



class NumbersItem extends StatelessWidget {
  const NumbersItem(
      {Key? key,
      required this.number,
      required this.color,
      required this.ItemType, })
      : super(key: key);
  final Item number;

  final Color color;
  final String ItemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              right: 18,
            ),
            child: IconButton(
                onPressed: () {
                  try{
                    AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$ItemType/');
                    player.play(number.sound);
                  }catch(error){
                    print(error);
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {Key? key,
        required this.color,
        required this.ItemType, required this.phrase, })
      : super(key: key);

  final Color color;
  final Item phrase;
  final String ItemType;

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 100,


      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              right: 18,
            ),
            child: IconButton(
                onPressed: () {
                  try{
                    AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$ItemType/');
                    player.play(phrase.sound);
                  }catch(error){
                    print(error);
                  }
                },
                icon: Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
