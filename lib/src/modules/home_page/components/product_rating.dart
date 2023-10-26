import 'package:dummy_online_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({
    super.key,
    required this.productName,
    required this.productRating,
  });

  final String productName;
  final double productRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(productName),
          Row(
            children: [
              for (int i = 0; i < 5; i++)
                const Icon(
                  Icons.star,
                  size: 12,
                  color: AppColors.orange,
                ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  "5.0",
                  style: AppStyles.body.copyWith(fontSize: 10),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
