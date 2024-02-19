import 'package:car_manager/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/login.dart';



class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.back(), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage(TImages.image2),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSize.spaceBtwSections,
            ),

            /// title
            Text("Your account successfully created!",
                style: Theme.of(context).textTheme.headlineMedium,
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
                onPressed:  () => Get.offAll(() => const LoginScreen()),
                child: const Text("Continue"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
