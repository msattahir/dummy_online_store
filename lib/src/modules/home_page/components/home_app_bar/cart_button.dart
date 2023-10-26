import 'package:dummy_online_store/src/config/routes/route_names.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/app_theme.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
  });

  void goToExplorePage(BuildContext context) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (_) => ExplorePage(),
    //     settings: const RouteSettings(arguments: {"foo": "bar"}),
    //   ),
    // );

    Navigator.pushNamed(context, RouteNames.explorePage,
        arguments: {"foo": "bar"});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: IconButton(
          onPressed: () => goToExplorePage(context),
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: AppColors.black,
          )),
    );
  }
}
