import 'package:flutter/material.dart';
import 'package:flutter_legacy_loja_virtual/view/layout.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    var content = Column();

    return Layout.render(
      context,
      content,
      bottomItemSelected: 0
    );
  }
}
