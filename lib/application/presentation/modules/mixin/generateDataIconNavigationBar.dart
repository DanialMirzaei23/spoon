import 'package:flutter/cupertino.dart';
import '../../../packages/package.dart';

mixin GenerateNavigationBar{
  static List<IconData> dataIcon = [
    CupertinoIcons.home,
    CupertinoIcons.square_grid_2x2,
    CupertinoIcons.heart,
    CupertinoIcons.shopping_cart,
  ];
  static List<String> dataTextIcon = [
    "Home",
    "Menu",
    "Favorites",
    " "
    // CupertinoIcons.shopping_cart,
  ];
}