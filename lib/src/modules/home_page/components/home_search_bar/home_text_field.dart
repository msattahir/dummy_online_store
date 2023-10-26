import 'package:flutter/material.dart';

import '../../../../config/theme/app_theme.dart';

class HomeTextField extends StatelessWidget {
  const HomeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          hintText: "Searching Item",
          hintStyle: AppStyles.body.copyWith(color: AppColors.grey),
          prefixIcon: const Icon(
            Icons.search,
            size: 25,
          ),
          filled: true,
          fillColor: Colors.grey.withOpacity(.2),
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
          isDense: true,
        ),
      ),
    );
  }
}
