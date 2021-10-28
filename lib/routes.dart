import 'package:najot_project2/screens/home_screen/home.dart';
import 'package:najot_project2/screens/list_item_screen/item_list_screen.dart';

import 'screens/details/item_detail.dart';

var routes = {
  HomeScreen.screenName: (context) => HomeScreen(),
  ItemDetail.screenName: (context) => ItemDetail(),
  CategoryListScreen.screenName: (context) => CategoryListScreen(),
};
