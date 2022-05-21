import 'package:epicture/app/color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScaffoldWidget extends HookConsumerWidget {
  final String title;
  final Widget? body;

  const ScaffoldWidget({
    Key? key,
    required this.title,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: body,
      bottomNavigationBar: null,
      backgroundColor: AppColor.tertiaryColor,
      resizeToAvoidBottomInset: true,
      primary: true,
      drawerDragStartBehavior: DragStartBehavior.start,
      extendBody: false,
      extendBodyBehindAppBar: false,
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: true,
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      title: Text(title),
      elevation: 5,
      shadowColor: AppColor.black,
      backgroundColor: AppColor.primaryColor,
      foregroundColor: AppColor.white,
      iconTheme: IconThemeData(
        color: AppColor.white,
        size: 60.sp,
        opacity: 1,
      ),
      actionsIconTheme: IconThemeData(
        color: AppColor.white,
        size: 60.sp,
        opacity: 1,
      ),
      primary: true,
      centerTitle: true,
      excludeHeaderSemantics: false,
      toolbarOpacity: 1.0,
      bottomOpacity: 1.0,
      toolbarHeight: 150.sp,
      leadingWidth: 250.sp,
    );
  }
}
