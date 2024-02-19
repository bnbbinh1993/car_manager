import 'package:car_manager/features/authentication/screens/password/reset_password.dart';
import 'package:car_manager/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/text_strings.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///headings
            Text(TTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSize.spaceBtwItems),
            Text(TTexts.loginTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSize.spaceBtwSections * 2),

            ///text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: TSize.spaceBtwSections),
            ///submit button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const ResetPasswordScreen()),
                    child: const Text("Submit"))),
          ],
        ),
      ),
    );
  }
}
