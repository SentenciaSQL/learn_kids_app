import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';
import 'package:learn_kids_app/src/widgets/menu_widget.dart';

import 'package:learn_kids_app/src/widgets/back_button_widget.dart';
import 'package:learn_kids_app/src/widgets/item_container_widget.dart';

class AnimalsPage extends StatefulWidget {

  static final routeName = 'animals';

  @override
  _AnimalsPageState createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).animalsPage),
      ),
      drawer: MenuWidget(),
      body: _createGridView(),
      floatingActionButton: BackButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }

  Widget _createGridView() {
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
              ItemButtonWidget(Languages.of(context).bee, '001-bee.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).butterfly, '002-butterfly.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).cat, '003-cat.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).cow, '004-cow.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).dog, '005-puppy.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).elephant, '006-elephant.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).emu, '007-Emu.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).flamingo, '008-flamingo.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).giraffe, '009-giraffe.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).horse, '010-horse.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).jellyfish, '011-jellyfish.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).kangaroo, '012-kangaroo.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).koala, '013-koala.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).ladybug, '014-ladybug.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).lion, '015-lion.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).monkey, '016-monkey.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).panda, '017-panda.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).peacock, '018-peacock.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).penguin, '019-penguin.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).pig, '020-pig.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).pufferFish, '021-puffer fish.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).seahorse, '022-seahorse.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).seal, '023-seal.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).shark, '024-shark.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).sheep, '025-sheep.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).sloth, '026-sloth.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).snail, '027-snail.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).sugarGlider, '028-sugar glider.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).walrus, '029-walrus.png', AnimalsPage.routeName),
              ItemButtonWidget(Languages.of(context).whale, '030-whale.png', AnimalsPage.routeName),
            ],
          )
        )
      ]
    );
  }
}