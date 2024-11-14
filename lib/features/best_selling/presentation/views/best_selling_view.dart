import 'package:flutter/material.dart';
import 'package:fruit_hub/generated/l10n.dart';
import '../../../../core/utils/widgets/custom_app_bar.dart';
import 'widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const routeName = '/bestSellingView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).bestSelling,
      ),
      body: SafeArea(
        child: BestSellingViewBody(),
      ),
    );
  }
}
