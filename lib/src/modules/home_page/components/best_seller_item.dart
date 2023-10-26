import 'package:flutter/material.dart';

import '../../../config/theme/app_theme.dart';
import '../../../global_widgets/carousel_card.dart';
import 'product_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
    required this.productName,
    required this.productRating,
  });

  final String productName;
  final double productRating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 155,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          color: AppColors.grey.withOpacity(.3),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Column(
        children: [
          const CarouselCard(
            padding: EdgeInsets.zero,
            color: AppColors.blue,
            size: 50,
            width: 110,
            height: 110,
          ),
          ProductRating(
            productName: productName,
            productRating: productRating,
          )
        ],
      ),
    );
  }
}
