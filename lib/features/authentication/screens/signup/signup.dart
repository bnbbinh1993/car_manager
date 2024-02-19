import 'package:car_manager/common/widgets/form_divider.dart';
import 'package:car_manager/common/widgets/social_buttons.dart';
import 'package:car_manager/features/authentication/screens/signup/widget/login_signup/signup_form.dart';
import 'package:car_manager/utils/constants/sizes.dart';
import 'package:car_manager/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSize.spaceBtwSections),
              ///form
              const SignupForm(),
              const SizedBox(height: TSize.spaceBtwItems),
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSize.spaceBtwItems),
              const TSocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}


