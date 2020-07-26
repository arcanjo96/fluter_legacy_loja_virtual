import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Layout {
  static Widget render(
    BuildContext context,
    Widget child, {
    String title,
    Widget floatingActionButton,
    int bottomItemSelected,
  }) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg-image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        child: FaIcon(
                          FontAwesomeIcons.userCog,
                          color: Layout.light(),
                          size: 24,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Lucas Arcanjo",
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                color: Layout.light(),
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: FaIcon(
                          FontAwesomeIcons.shoppingBag,
                          color: Layout.primaryLight(),
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: child)
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: floatingActionButton,
      backgroundColor: Layout.secondary(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Início'),
            icon: Icon(
              Icons.wb_sunny,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Compras'),
            icon: FaIcon(
              FontAwesomeIcons.solidStar,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Favoritos'),
            icon: FaIcon(
              FontAwesomeIcons.solidHeart,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Sair'),
            icon: FaIcon(
              FontAwesomeIcons.signOutAlt,
              size: 30,
            ),
          ),
        ],
        currentIndex: bottomItemSelected ?? 0,
        selectedItemColor: (bottomItemSelected == null)
            ? Layout.dark(.3)
            : Layout.primaryLight(),
        unselectedItemColor: Layout.dark(.3),
        backgroundColor: Layout.light(),
        type: BottomNavigationBarType.fixed,
        onTap: (int i) {
          print('Item $i');
        },
      ),
    );
  }

  static Color primary([double opacity = 1]) =>
      Color(0xff195738).withOpacity(opacity);
  static Color primaryLight([double opacity = 1]) =>
      Color(0xff007d40).withOpacity(opacity);
  static Color primaryDark([double opacity = 1]) =>
      Color(0xff123027).withOpacity(opacity);

  static Color secondary([double opacity = 1]) =>
      Color(0xffddc199).withOpacity(opacity);
  static Color secondaryLight([double opacity = 1]) =>
      Color(0xffe0cf90).withOpacity(opacity);
  static Color secondaryDark([double opacity = 1]) =>
      Color(0xffce9150).withOpacity(opacity);
  static Color secondaryHight([double opacity = 1]) =>
      Color(0xfffdac25).withOpacity(opacity);

  static Color light([double opacity = 1]) =>
      Color(0xfff0ece1).withOpacity(opacity);
  static Color dark([double opacity = 1]) =>
      Color(0xff333333).withOpacity(opacity);
}
