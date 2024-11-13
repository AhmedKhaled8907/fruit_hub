import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles/app_text_styles.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

import '../../../../../generated/l10n.dart';
import 'featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width - 32;
    var isArabic = Localizations.localeOf(context).languageCode == 'ar';
    return SizedBox(
      width: itemWidth,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Stack(
            children: [
              Positioned(
                left: isArabic ? 0 : itemWidth * 0.4,
                top: 0,
                bottom: 0,
                right: isArabic ? itemWidth * 0.4 : 0,
                child: SvgPicture.asset(
                  Assets.imagesPageViewItem2Image,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: itemWidth * 0.5,
                padding: const EdgeInsets.symmetric(horizontal: 36),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: svg.Svg(
                      isArabic
                          ? Assets.imagesFeaturedItemBackground
                          : Assets.imagesImagesFeaturedItemBackground2,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      S.of(context).eidOffers,
                      style: TextStyles.regular13.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      S.of(context).discount,
                      style: TextStyles.bold19.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    FeaturedItemButton(
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
