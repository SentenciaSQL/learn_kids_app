import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/pages/sign_language_detail_page.dart';

class ItemSignWidget extends StatelessWidget {
  final String stringParam;
  final String imageParam;
  final String pageName;
  final bool fullLetter;

  const ItemSignWidget(this.stringParam, this.imageParam, this.pageName, { this.fullLetter = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, SignLanguageDetailPage.routeName, arguments: [this.stringParam, this.imageParam]),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: Image(
                image: AssetImage('assets/$pageName/$imageParam.png'),
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (fullLetter)
                ? Flexible(child: Text(stringParam, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)))
                : Text(stringParam.toUpperCase() +''+ stringParam, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_rounded, color: Colors.grey,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
