import 'package:dummy_online_store/src/modules/home_page/models/best_seller_model.dart';
import 'package:flutter/material.dart';

import 'best_seller_item.dart';

class BestSellerItems extends StatelessWidget {
  BestSellerItems({super.key});

  final List<BestSellerModel> bestSellers = [
    BestSellerModel(name: "Plant", rating: 5.0),
    BestSellerModel(name: "Lamp", rating: 5.0),
    BestSellerModel(name: "Chair", rating: 5.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < 3; i++)
          // const Placeholder(
          //   fallbackHeight: 150,
          //   fallbackWidth: 110,
          // )
          BestSellerItem(
            productName: bestSellers[i].name,
            productRating: bestSellers[i].rating,
          )
      ],
    );
  }
}
