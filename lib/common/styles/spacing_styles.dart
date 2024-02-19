import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';


class TSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSize.appBarHeight,
    left: TSize.defaultSpace,
    right: TSize.defaultSpace,
    bottom: TSize.defaultSpace,
  );
}