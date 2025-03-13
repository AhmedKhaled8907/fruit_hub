
import 'package:fruit_hub/core/utils/resources/app_assets.dart';

import '../../../../generated/l10n.dart';

class NavigationBarItemsEntity {
  final String name;
  final String activeItem;
  final String inActiveItem;

  NavigationBarItemsEntity({
    required this.name,
    required this.activeItem,
    required this.inActiveItem,
  });
}

List<NavigationBarItemsEntity> navigationBarItems(context) => [
      NavigationBarItemsEntity(
        name: S.of(context).home,
        activeItem: AppAssets.imagesVuesaxBoldHome,
        inActiveItem: AppAssets.imagesVuesaxOutlineHome,
      ),
      NavigationBarItemsEntity(
        name: S.of(context).products,
        activeItem: AppAssets.imagesVuesaxBoldProducts,
        inActiveItem: AppAssets.imagesVuesaxOutlineProducts,
      ),
      NavigationBarItemsEntity(
        name: S.of(context).cart,
        activeItem: AppAssets.imagesVuesaxBoldShoppingCart,
        inActiveItem: AppAssets.imagesVuesaxOutlineShoppingCart,
      ),
      NavigationBarItemsEntity(
        name: S.of(context).profile,
        activeItem: AppAssets.imagesVuesaxBoldUser,
        inActiveItem: AppAssets.imagesVuesaxOutlineUser,
      ),
    ];
