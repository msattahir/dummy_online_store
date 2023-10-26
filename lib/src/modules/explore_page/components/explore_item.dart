import 'package:flutter/material.dart';

import '../../../config/theme/app_theme.dart';
import '../../../global_widgets/carousel_card.dart';
import '../models/explore_model.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({
    super.key,
    required this.exploreItems,
    required this.i,
  });

  final List<ExploreModel> exploreItems;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        height: 210,
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselCard(
              height: 170,
              color: AppColors.blue,
              padding: EdgeInsets.zero,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              icon: exploreItems[i].icon,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 16.0),
              child: Text(
                exploreItems[i].name,
                style: AppStyles.body.copyWith(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
