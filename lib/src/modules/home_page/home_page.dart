import 'package:flutter/material.dart';

import '../../global_widgets/app_scaffold.dart';
import 'components/best_seller_header.dart';
import 'components/best_seller_items.dart';
import 'components/carousel.dart';
import 'components/carousel_indicator.dart';
import 'components/categories.dart';
import 'components/home_app_bar/home_app_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Carousel(pageController),
            CarouselIndicator(pageController),
            Categories(),
            const BestSellerHeader(),
            BestSellerItems(),
            const SizedBox(height: 70)
          ],
        ),
      ),
    );
  }
}
