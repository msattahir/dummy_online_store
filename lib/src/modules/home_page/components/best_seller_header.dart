import 'package:dummy_online_store/src/config/routes/route_names.dart';
import 'package:flutter/material.dart';

import '../../../config/theme/app_theme.dart';

class BestSellerHeader extends StatelessWidget {
  const BestSellerHeader({
    super.key,
  });

  void goToDetailsPage(BuildContext context) {
    Navigator.pushNamed(context, RouteNames.detailsPage);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Best seller",
          style: AppStyles.header.copyWith(fontSize: 18),
        ),
        TextButton(
          onPressed: () => goToDetailsPage(context),
          child: Text(
            "Show All",
            style: AppStyles.body.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.orange,
            ),
          ),
        ),
      ],
    );
  }
}
