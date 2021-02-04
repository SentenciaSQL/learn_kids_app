import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';
import 'package:learn_kids_app/src/widgets/menu_widget.dart';

import 'package:learn_kids_app/src/widgets/back_button_widget.dart';
import 'package:learn_kids_app/src/widgets/item_container_widget.dart';

import 'package:learn_kids_app/src/preferences/preferences.dart';

class AlphabetPage extends StatefulWidget {

  static final routeName = 'alphabet';

  @override
  _AlphabetPageState createState() => _AlphabetPageState();
}

class _AlphabetPageState extends State<AlphabetPage> {
  String _locale;

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        _locale = locale.languageCode;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    //print('WHAT $_locale');
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).alphabetPage),
      ),
      drawer: MenuWidget(),
      body: SafeArea(
        child:  _createGridView(),
      ),
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
              ItemButtonWidget('a', '001-A.png', AlphabetPage.routeName),
              ItemButtonWidget('b', '002-b.png', AlphabetPage.routeName),
              ItemButtonWidget('c', '003-c.png', AlphabetPage.routeName),
              ItemButtonWidget('d', '005-d.png', AlphabetPage.routeName),
              ItemButtonWidget('e', '006-e.png', AlphabetPage.routeName),
              ItemButtonWidget('f', '007-f.png', AlphabetPage.routeName),
              ItemButtonWidget('g', '008-g.png', AlphabetPage.routeName),
              ItemButtonWidget('h', '009-h.png', AlphabetPage.routeName),
              ItemButtonWidget('i', '010-I.png', AlphabetPage.routeName),
              ItemButtonWidget('j', '011-j.png', AlphabetPage.routeName),
              ItemButtonWidget('k', '012-k.png', AlphabetPage.routeName),
              ItemButtonWidget('l', '013-l.png', AlphabetPage.routeName),
              ItemButtonWidget('m', '014-m.png', AlphabetPage.routeName),
              ItemButtonWidget('n', '015-n.png', AlphabetPage.routeName),
              if(_locale == 'es') ItemButtonWidget('ñ', '016-n.png', AlphabetPage.routeName),
              ItemButtonWidget('o', '017-o.png', AlphabetPage.routeName),
              ItemButtonWidget('p', '018-p.png', AlphabetPage.routeName),
              ItemButtonWidget('q', '019-q.png', AlphabetPage.routeName),
              ItemButtonWidget('r', '020-r.png', AlphabetPage.routeName),
              ItemButtonWidget('s', '021-s.png', AlphabetPage.routeName),
              ItemButtonWidget('t', '022-t.png', AlphabetPage.routeName),
              ItemButtonWidget('u', '023-u.png', AlphabetPage.routeName),
              ItemButtonWidget('v', '024-v.png', AlphabetPage.routeName),
              ItemButtonWidget('w', '025-w.png', AlphabetPage.routeName),
              ItemButtonWidget('x', '026-x.png', AlphabetPage.routeName),
              ItemButtonWidget('y', '027-y.png', AlphabetPage.routeName),
              ItemButtonWidget('z', '028-z.png', AlphabetPage.routeName),
              if(_locale == 'es') ItemButtonWidget('ch', '029-ch.png', AlphabetPage.routeName),
              //if(_locale == 'es') ItemButtonWidget('ll', 'll.png', AlphabetPage.routeName),
            ],
          ),
        ),
      ],
    );
  }
}