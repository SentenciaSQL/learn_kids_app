import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/pages/home_page.dart';

class BackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, HomePage.routeName, (r) => false);
      },
    );
  }
}

class BackButtonPopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

