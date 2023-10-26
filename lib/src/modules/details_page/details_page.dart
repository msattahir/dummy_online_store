import 'package:dummy_online_store/src/config/theme/app_theme.dart';
import 'package:dummy_online_store/src/global_widgets/app_bar.dart';
import 'package:dummy_online_store/src/global_widgets/carousel_card.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.deepBlue,
        title: RawMaterialButton(
          constraints: BoxConstraints.tight(const Size(30, 30)),
          onPressed: () => {Navigator.pop(context)},
          fillColor: AppColors.lightBlue,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.chevron_left_rounded,
            size: 25.0,
            color: AppColors.deepBlue,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: RawMaterialButton(
              constraints: BoxConstraints.tight(const Size(30, 30)),
              onPressed: () {},
              fillColor: AppColors.lightBlue,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.bookmark_outline,
                size: 20.0,
                color: AppColors.deepBlue,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CarouselCard(
                height: 350,
                padding: EdgeInsets.zero,
                color: AppColors.deepBlue,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30.0)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "Lorem Ipsum",
                        style: AppStyles.header.copyWith(letterSpacing: 1),
                      ),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elt,sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. A",
                      style: AppStyles.body.copyWith(
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Size",
                                style: AppStyles.body.copyWith(fontSize: 16),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                          const Column(),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.orange,
                        minimumSize: const Size.fromHeight(50),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.shopping_cart_outlined,
                            size: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              'Add to Cart',
                              style: AppStyles.body.copyWith(
                                fontSize: 18,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 70)
        ],
      ),
    );
  }
}
