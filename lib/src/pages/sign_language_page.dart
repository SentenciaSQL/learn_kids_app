import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';
import 'package:learn_kids_app/src/widgets/menu_widget.dart';

import 'package:learn_kids_app/src/widgets/back_button_widget.dart';

import 'package:learn_kids_app/src/widgets/item_sign_widget.dart';

class SignLanguagePage extends StatelessWidget {

  static final routeName = 'sign_language';
  static final routeNameForImg = 'signLanguage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).signLanguagePage),
      ),
      drawer: MenuWidget(),
      body: _createGridView(context),
      floatingActionButton: BackButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }

  Widget _createGridView(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: [
        SliverPadding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 70),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              ItemSignWidget('a','001-letter-a', SignLanguagePage.routeNameForImg),
              ItemSignWidget('b','012-letter-b', SignLanguagePage.routeNameForImg),
              ItemSignWidget('c','023-letter-c', SignLanguagePage.routeNameForImg),
              ItemSignWidget('d','034-letter-d', SignLanguagePage.routeNameForImg),
              ItemSignWidget('e','045-letter-e', SignLanguagePage.routeNameForImg),
              ItemSignWidget('f','047-letter-f', SignLanguagePage.routeNameForImg),
              ItemSignWidget('g','048-letter-g', SignLanguagePage.routeNameForImg),
              ItemSignWidget('h','049-letter-h', SignLanguagePage.routeNameForImg),
              ItemSignWidget('i','050-letter-i', SignLanguagePage.routeNameForImg),
              ItemSignWidget('j','002-letter-j', SignLanguagePage.routeNameForImg),
              ItemSignWidget('k','003-letter-k', SignLanguagePage.routeNameForImg),
              ItemSignWidget('l','004-letter-l', SignLanguagePage.routeNameForImg),
              ItemSignWidget('m','005-letter-m', SignLanguagePage.routeNameForImg),
              ItemSignWidget('n','006-letter-n', SignLanguagePage.routeNameForImg),
              ItemSignWidget('o','007-letter-o', SignLanguagePage.routeNameForImg),
              ItemSignWidget('p','008-letter-p', SignLanguagePage.routeNameForImg),
              ItemSignWidget('q','009-letter-q', SignLanguagePage.routeNameForImg),
              ItemSignWidget('r','010-letter-r', SignLanguagePage.routeNameForImg),
              ItemSignWidget('s','011-Letter-s', SignLanguagePage.routeNameForImg),
              ItemSignWidget('t','013-letter-t', SignLanguagePage.routeNameForImg),
              ItemSignWidget('u','014-letter-u', SignLanguagePage.routeNameForImg),
              ItemSignWidget('v','015-letter-v', SignLanguagePage.routeNameForImg),
              ItemSignWidget('w','016-letter-w', SignLanguagePage.routeNameForImg),
              ItemSignWidget('x','017-letter-x', SignLanguagePage.routeNameForImg),
              ItemSignWidget('y','018-letter-y', SignLanguagePage.routeNameForImg),
              ItemSignWidget('z','019-letter-z', SignLanguagePage.routeNameForImg),


              ItemSignWidget(Languages.of(context).signLanguagePage,'021-sign language', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).signLanguagePage,'036-sign-language', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).wow,'020-wow', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).bathroom,'022-bathroom', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).farewell,'025-Farewell', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).come,'026-come', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).whatAreYouDoing,'027-what are you doing', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).equality,'028-equality', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).far,'029-far', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).like,'030-like', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).ok,'031-ok', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).good,'032-good', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).stop,'033-stop', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).hello,'035-hello', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).iLoveYou,'037-i-love-you', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).iLoveYou,'038-i-love-you', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).later,'039-later', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).lol,'040-lol', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).no,'041-No', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).perfect,'042-perfect', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).question,'043-question', SignLanguagePage.routeNameForImg, fullLetter: true),
              ItemSignWidget(Languages.of(context).stare,'046-stare', SignLanguagePage.routeNameForImg, fullLetter: true),

            ],
          )
        )
      ],
    );
  }
}