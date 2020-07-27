import 'package:flutter/material.dart';
import 'package:flutter_legacy_loja_virtual/view/layout.dart';

class RoulleteCategory extends StatefulWidget {
  @override
  _RoulleteCategoryState createState() => _RoulleteCategoryState();
}

class _RoulleteCategoryState extends State<RoulleteCategory>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1000,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                spreadRadius: 2,
                offset: Offset(2, 0),
                color: Layout.dark(.3),
              ),
            ],
          ),
        ),
        RotationTransition(
          turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
          child: GestureDetector(
            onTap: () {
              _animationController
                  .forward()
                  .then((value) => _animationController.reset());
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: Layout.secondaryDark(),
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width,
                    ),
                    child: Image.asset(
                      'assets/images/bg-catwheel.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
