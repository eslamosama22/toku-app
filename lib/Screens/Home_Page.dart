import 'package:flutter/material.dart';
import 'package:language_learning_app/Screens/FamliyMembers_page.dart';
import 'package:language_learning_app/Screens/Numbers_Page.dart';
import 'package:language_learning_app/Screens/Phrases.dart';
import 'package:language_learning_app/components/Category_Item.dart';

import 'Colors_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFDE4),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xffEF9235),
          ),
          Category(
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamliyMembersPage();
              }));
            },
            text: 'Family Members',
            color: Color(0xff528032),
          ),
          Category(
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            text: 'Colors',
            color: Color(0xff7D40A2),
          ),
          Category(
            OnTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Color(0xff47A5CB),
          ),
        ],
      ),
    );
  }
}
