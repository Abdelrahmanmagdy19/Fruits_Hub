import 'package:furits_ecommerce_app/core/utils/app_images.dart';

class BottomNavigationBarEntitey {
  final String isActiveImage, inActiveImage;
  final String name;

  BottomNavigationBarEntitey({
    required this.isActiveImage,
    required this.inActiveImage,
    required this.name,
  });
  static List<BottomNavigationBarEntitey> bottomNavigationBarItem = [
    BottomNavigationBarEntitey(
      isActiveImage: Assets.imagesHomeBold,
      inActiveImage: Assets.imagesHomeOutline,
      name: 'الرئيسية',
    ),
    BottomNavigationBarEntitey(
      isActiveImage: Assets.imagesProductBold,
      inActiveImage: Assets.imagesProductOutline,
      name: 'المنتجات',
    ),
    BottomNavigationBarEntitey(
      isActiveImage: Assets.imagesShoppingCartBold,
      inActiveImage: Assets.imagesShoppingCartOutline,
      name: 'سلة التسوق',
    ),
    BottomNavigationBarEntitey(
      isActiveImage: Assets.imagesUserBold,
      inActiveImage: Assets.imagesUserOutline,
      name: 'حسابي',
    ),
  ];
}
