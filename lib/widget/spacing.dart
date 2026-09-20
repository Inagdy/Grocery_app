import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SpacingExtension on num {
  Widget get vertical => SizedBox(height: h);
  Widget get horizontal => SizedBox(width: w);
}