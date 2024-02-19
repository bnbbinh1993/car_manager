import 'package:car_manager/features/authentication/screens/login/login.dart';
import 'package:car_manager/features/authentication/screens/signup/widget/success_screen/success_screen.dart';
import 'package:car_manager/utils/constants/image_strings.dart';
import 'package:car_manager/utils/constants/sizes.dart';
import 'package:car_manager/utils/constants/text_strings.dart';
import 'package:car_manager/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// image
              Image(
                image: const AssetImage(TImages.image2),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              /// title
              Text("Verify your email address!",
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              Text("support@bnb.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              Text(
                  "Congratulations! Your Account Awaits: Verify Your Email to Start App",
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              ///button

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const SuccessScreen()),
                  child: const Text("Continue"),
                ),
              ),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("ResendEmail"),
                ),
              ),
              /// button
            ],
          ),
        ),
      ),
    );
  }
}
