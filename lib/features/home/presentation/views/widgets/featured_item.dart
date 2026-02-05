import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:furits_ecommerce_app/core/utils/app_images.dart';
import 'package:furits_ecommerce_app/core/utils/app_text_styels.dart';
import 'package:furits_ecommerce_app/features/home/presentation/views/widgets/featured_item_buttom.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context).width;
    return AspectRatio(
      aspectRatio: 342 / 158,
      child: SizedBox(
        width: size,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: size * 0.5,
              top: 0,
              bottom: 0,
              child: Image.asset(
                Assets.imagesWatermelonTest,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: size / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Svg(Assets.imagesFeaturedItemBackground),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text(
                      'عروض العيد',
                      style: AppTextStyles.regular13.copyWith(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'خصم 25%',
                      style: AppTextStyles.bold19.copyWith(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    SizedBox(height: 7),
                    FeaturedItemButtom(onPressed: () {}),
                    SizedBox(height: 29),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
