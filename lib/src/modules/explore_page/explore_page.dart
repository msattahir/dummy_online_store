import 'package:dummy_online_store/src/config/theme/app_theme.dart';
import 'package:dummy_online_store/src/global_widgets/app_scaffold.dart';
import 'package:dummy_online_store/src/global_widgets/app_bar.dart';
import 'package:dummy_online_store/src/modules/explore_page/models/explore_model.dart';
import 'package:flutter/material.dart';

import 'components/app_bar/explore_app_bar_actions.dart';
import 'components/app_bar/explore_app_bar_title.dart';
import 'components/explore_item.dart';

class ExplorePage extends StatelessWidget {
  ExplorePage({super.key});

  final List<ExploreModel> exploreItems = [
    ExploreModel(name: "Plant", icon: Icons.grass_sharp),
    ExploreModel(name: "Lamp", icon: Icons.lightbulb_outline),
    ExploreModel(name: "Chair", icon: Icons.event_seat_outlined),
    ExploreModel(name: "Kitchen", icon: Icons.microwave_outlined),
  ];

  Future<bool> onWillPop(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return const AlertDialog(
          title: Text("No Road!!!"),
          content: Text(
              "This is the content This is the content This is the content"),
        );
      },
    );
    Future.delayed(const Duration(seconds: 3));
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    final params = ModalRoute.of(context)!.settings.arguments as Map;
    return AppScaffold(
      backgroundColor: AppColors.deepBlue,
      appBar: const MyAppBar(
        title: ExploreAppBarTitle(),
        actions: [ExploreAppBarActions()],
      ),
      body: WillPopScope(
        onWillPop: () => onWillPop(context),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                children: [
                  Text(
                    params["foo"] ?? "Nothing",
                    style: AppStyles.body.copyWith(color: AppColors.white),
                  ),
                  for (int i = 0; i < exploreItems.length; i++)
                    ExploreItem(exploreItems: exploreItems, i: i),
                  const SizedBox(
                    height: 70,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
