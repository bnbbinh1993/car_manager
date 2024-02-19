import 'package:car_manager/features/shop/screens/home/widget/home_app_bar.dart';
import 'package:car_manager/features/shop/screens/home/widget/home_categories.dart';
import 'package:car_manager/features/shop/screens/home/widget/search_bar.dart';
import 'package:car_manager/utils/constants/image_strings.dart';
import 'package:car_manager/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/primary_header_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///appbar
                  THomeAppBar(),
                  SizedBox(height: TSize.xs),

                  ///searchbar
                  TSearchBar(text: 'Search in Store'),
                  SizedBox(height: TSize.md),

                  ///categories
                  Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSize.md),

                        ///listview
                        THomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///body
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(TSize.md)),
                child:
                    const Image(height: 200, image: AssetImage(TImages.image)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
