import 'package:dummy_online_store/src/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CarouselIndicator extends StatefulWidget {
  const CarouselIndicator(this.pageController, {super.key});

  final PageController pageController;

  @override
  State<CarouselIndicator> createState() => _CarouselIndicatorState();
}

class _CarouselIndicatorState extends State<CarouselIndicator> {
  @override
  void initState() {
    widget.pageController.addListener(listenToPageView);
    super.initState();
  }

  @override
  void dispose() {
    widget.pageController.dispose();
    super.dispose();
  }

  void listenToPageView() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 4; i++)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 5,
                backgroundColor: widget.pageController.page!.toInt() == i
                    ? AppColors.orange
                    : AppColors.grey,
              ),
            ),
        ],
      ),
    );
  }
}
