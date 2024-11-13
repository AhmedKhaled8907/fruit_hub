import 'package:fruit_hub/core/utils/app_images.dart';

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
        activeItem: Assets.imagesVuesaxBoldHome,
        inActiveItem: Assets.imagesVuesaxOutlineHome,
      ),
      NavigationBarItemsEntity(
        name: S.of(context).products,
        activeItem: Assets.imagesVuesaxBoldProducts,
        inActiveItem: Assets.imagesVuesaxOutlineProducts,
      ),
      NavigationBarItemsEntity(
        name: S.of(context).cart,
        activeItem: Assets.imagesVuesaxBoldShoppingCart,
        inActiveItem: Assets.imagesVuesaxOutlineShoppingCart,
      ),
      NavigationBarItemsEntity(
        name: S.of(context).profile,
        activeItem: Assets.imagesVuesaxBoldUser,
        inActiveItem: Assets.imagesVuesaxOutlineUser,
      ),
    ];
