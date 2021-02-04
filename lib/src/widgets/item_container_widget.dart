import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/utils/utils.dart';

class ItemButtonWidget extends StatelessWidget {
  final String stringParam;
  final String imageParam;
  final String pageName;

  const ItemButtonWidget(this.stringParam, this.imageParam, this.pageName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => playButton(context, stringParam),
      child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                child: Image(
                    image: AssetImage('assets/$pageName/$imageParam')
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (pageName == 'alphabet') Text(stringParam.toUpperCase() +''+ stringParam, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  if (pageName == 'animals' || pageName == 'professions' || pageName == 'numbers' || pageName == 'food')
                    Flexible(child: Text(stringParam, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), textAlign: TextAlign.center,)),
                  if (pageName == 'alphabet') SizedBox(width: 5),
                  Icon(Icons.volume_up)
                ],
              )

            ],
          )
      ),
    );
  }
}
