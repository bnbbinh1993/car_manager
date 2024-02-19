import 'package:car_manager/common/styles/spacing_styles.dart';
import 'package:car_manager/common/widgets/form_divider.dart';
import 'package:car_manager/features/authentication/screens/login/widget/login_form.dart';
import 'package:car_manager/features/authentication/screens/login/widget/login_header.dart';
import 'package:car_manager/common/widgets/social_buttons.dart';
import 'package:car_manager/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo
              TLoginHeader(),

              /// form
              const TLoginForm(),

              /// divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSize.spaceBtwSections),

              ///footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
