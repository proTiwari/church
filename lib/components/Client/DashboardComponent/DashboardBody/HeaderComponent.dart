import 'package:flutter/material.dart';

import '../../../../../../utils/Extensions/context_extensions.dart';

import '../../../../../../utils/Extensions/widget_extensions.dart';
import '../../../../utils/Common.dart';
import '../../../../utils/ResponsiveWidget.dart';
import '../../HeaderContent.dart';

class HeaderComponent extends StatefulWidget {
  @override
  HeaderComponentState createState() => HeaderComponentState();
}

class HeaderComponentState extends State<HeaderComponent> {
  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(),
      padding: EdgeInsets.only(
          bottom: ResponsiveWidget.isExtraSmallScreen(context) ? 80 : 100),
      child: Stack(
        children: [
          Center(child: Image.asset('assets/main_logo.jpeg')), // trunks logo

          // ResponsiveWidget.isExtraSmallScreen(context)
          //     ? Stack(
          //         clipBehavior: Clip.none,
          //         alignment: Alignment.bottomCenter,
          //         children: [
          //           Column(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [],
          //           ).paddingSymmetric(horizontal: mCommonPadding(context)),
          //         ],
          //       ).paddingTop(context.height() * 0.1)
          //     :
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeaderContent().expand(),
                ],
              ).paddingSymmetric(horizontal: mCommonPadding(context)),
            ],
          ).paddingTop(context.height() * 0.19),
        ],
      ),
    );
  }
}
