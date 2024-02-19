import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: TSize.iconSize,
          height: TSize.iconSize,
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSize.iconsMd,
              height: TSize.iconsMd,
              image: AssetImage(TImages.darkAppLogo),
            ),
          ),
        ),
        const SizedBox(width: TSize.spaceBtwItems),
        Container(
          width: TSize.iconSize,
          height: TSize.iconSize,
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSize.iconsMd,
              height: TSize.iconsMd,
              image: AssetImage(TImages.darkAppLogo),
            ),
          ),
        ),
      ],
    );
  }
}
