import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/widgets/app_bar_with_notifications.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithNotifications(
        title: S.of(context).bestSelling,
      ),
      body: const SafeArea(
        child: BestSellingViewBody(),
      ),
    );
  }
}
