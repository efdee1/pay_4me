import 'package:flutter/material.dart';

import 'UI/view/home.dart';
import 'UI/view/search_page.dart';


final Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => const Home(),
  SearchPage.routeName: (context) => const SearchPage()
};