import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';
import 'package:learn_kids_app/src/widgets/menu_widget.dart';

import 'package:learn_kids_app/src/widgets/back_button_widget.dart';
import 'package:learn_kids_app/src/widgets/item_container_widget.dart';

class FoodsPage extends StatefulWidget {

  static final routeName = 'food';

  @override
  _FoodsPageState createState() => _FoodsPageState();
}

class _FoodsPageState extends State<FoodsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).foodsPage),
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
              ItemButtonWidget(Languages.of(context).apple, 'apple-1.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).asparagus, 'asparagus.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).aubergine, 'aubergine.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).avocado, 'avocado.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).bacon, 'bacon.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).banana, 'banana.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).beans, 'beans.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).blueberries, 'blueberries.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).broccoli, 'broccoli.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).cabbage, 'cabbage.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).carrot, 'carrot.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).cauliflower, 'cauliflower.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).cheese, 'cheese-1.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).cherries, 'cherries.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).chili, 'chili.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).coconut, 'coconut.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).cookies, 'cookies.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).corn, 'corn.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).cucumber, 'cucumber.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).cupcake, 'cupcake-1.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).eggs, 'eggs.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).fish, 'fish.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).garlic, 'garlic.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).grapes, 'grapes.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).ham, 'ham.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).hamburguer, 'hamburguer.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).lemon, 'lemon-1.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).olives, 'olives.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).onion, 'onion-1.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).orange, 'orange.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).peach, 'peach.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).pear, 'pear.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).pineapple, 'pineapple.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).pizza, 'pizza-3.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).potatoes, 'potatoes-2.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).pumpkin, 'pumpkin.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).radish, 'radish.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).raspberry, 'raspberry.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).salad, 'salad-1.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).sausage, 'sausage.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).strawberry, 'strawberry.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).tomato, 'tomato.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).turkey, 'turkey.png', FoodsPage.routeName),
              ItemButtonWidget(Languages.of(context).watermelon, 'watermelon.png', FoodsPage.routeName),
            ],
          )
        )
      ],
    );
  }
}
