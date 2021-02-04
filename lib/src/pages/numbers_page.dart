import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';
import 'package:learn_kids_app/src/widgets/item_container_widget.dart';
import 'package:learn_kids_app/src/widgets/menu_widget.dart';

import 'package:learn_kids_app/src/widgets/back_button_widget.dart';

class NumbersPage extends StatefulWidget {

  static final routeName = 'numbers';

  @override
  _NumbersPageState createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).numbersPage),
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
                ItemButtonWidget(Languages.of(context).numberOne, '035-1.png', NumbersPage.routeName),
                ItemButtonWidget(Languages.of(context).numberTwo, '036-2.png', NumbersPage.routeName),
                ItemButtonWidget(Languages.of(context).numberThree, '037-3.png', NumbersPage.routeName),
                ItemButtonWidget(Languages.of(context).numberFour, '038-4.png', NumbersPage.routeName),
                ItemButtonWidget(Languages.of(context).numberFive, '039-5.png', NumbersPage.routeName),
                ItemButtonWidget(Languages.of(context).numberSix, '040-6.png', NumbersPage.routeName),
                ItemButtonWidget(Languages.of(context).numberSeven, '041-7.png', NumbersPage.routeName),
                ItemButtonWidget(Languages.of(context).numberEight, '042-8.png', NumbersPage.routeName),
                ItemButtonWidget(Languages.of(context).numberNine, '043-9.png', NumbersPage.routeName),
                ItemButtonWidget(Languages.of(context).numberZero, '044-0.png', NumbersPage.routeName),
              ],
            )
          )
        ]
    );
  }
}