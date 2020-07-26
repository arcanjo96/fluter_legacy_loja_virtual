import 'package:flutter/material.dart';
import 'package:flutter_legacy_loja_virtual/view/layout.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    var content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Layout.light(),
            borderRadius: BorderRadius.circular(25),
          ),
          margin: EdgeInsets.only(left: 20, right: 20),
          padding: EdgeInsets.all(20),
          height: 100,
          width: double.infinity,
          child: Text('Promoções'),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Layout.light(0.7),
              borderRadius: BorderRadius.circular(25),
            ),
            margin: EdgeInsets.only(left: 20, right: 20),
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Text('Produtos'),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            'Categorias',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Layout.light(),
                ),
          ),
        ),
        Container(
          height: 90,
        ),
      ],
    );

    return Layout.render(context, content, bottomItemSelected: 0);
  }
}
