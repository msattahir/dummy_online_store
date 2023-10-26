import 'package:dummy_online_store/src/config/routes/route_names.dart';
import 'package:dummy_online_store/src/modules/details_page/details_page.dart';
import 'package:dummy_online_store/src/modules/explore_page/explore_page.dart';
import 'package:dummy_online_store/src/modules/home_page/home_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  RouteNames.homePage: (_) => HomePage(),
  RouteNames.explorePage: (_) => ExplorePage(),
  RouteNames.detailsPage: (_) => const DetailsPage(),
};
