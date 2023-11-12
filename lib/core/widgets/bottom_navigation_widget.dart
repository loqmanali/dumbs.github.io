import 'dart:developer';
import 'package:dumbs/core/extensions/media_query_extension.dart';
import 'package:dumbs/core/widgets/coustom_sized_box.dart';
import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class BottomNavigationModel {
  String title;
  Color? color;
  String icon;

  BottomNavigationModel({required this.title, this.color, required this.icon});
}

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  bottomSelected(int index) {
    switch (index) {
      case 0:
        log('$index', name: 'case 0');
        // AppNavigator.navigatorTo(context, false, const HomeScreen());
        break;
      case 1:
        log('$index', name: 'case 1');
        // AppNavigator.navigatorTo(context, true, const ZonesScreen());
        break;
      case 2:
        log('$index', name: 'case 2');
        // AppNavigator.navigatorTo(context, false, const SelectSeasonScreen());
        break;
      case 3:
        log('$index', name: 'case 3');
        // AppNavigator.navigatorTo(context, true, const EventsScreen());
        break;
      case 4:
        log('$index', name: 'case 4');
        // AppNavigator.navigatorTo(context, false, const MoreScreen());
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.mainColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: ColoredBox(
        color: AppColors.appWhite,
        child: SafeArea(
          bottom: false,
          minimum: const EdgeInsets.only(bottom: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              5,
                  (index) {
                // final data = cubit.bottomNav[index];
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // cubit.changeSelectIndex(index);
                      // bottomSelected(index);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: context.kHeight(10.0) * 5.0,
                      color: AppColors.appWhite,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          1.0.height,
                          index == 2
                              ? Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3.0),
                            width: context.kWidth(35.0),
                            height: context.kHeight(35.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: AppColors.appLightGray,
                                width: 1.0,
                              ),
                            ),
                            clipBehavior: Clip.antiAlias,
                            // child: Center(
                            //   child: CustomImageNetwork(
                            //     image: config[cubit.currentIndicatorLogo]
                            //         .setting!
                            //         .logo!,
                            //     height: context.kHeight(30.0),
                            //     fit: BoxFit.contain,
                            //   ),
                            // ),
                          )
                              : const Center(
                            // child: SvgPicture.asset(
                            //   data.icon,
                            //   color: cubit.selectIndex == index
                            //       ? config[cubit.currentIndicatorLogo]
                            //       .setting!
                            //       .secondaryColor!
                            //       .toColor()
                            //       : AppColors.appLightGray,
                              // size: 25.0,
                            ),
                          ]),
                          // index == 2
                          //     ? const SizedBox()
                          //     : CustomText.h9(
                          //   text: data.title.tr,
                          //   color: cubit.selectIndex == index
                          //       ? config[cubit.currentIndicatorLogo]
                          //       .setting!
                          //       .secondaryColor!
                          //       .toColor()
                          //       : AppColors.appLightGray,
                          // ),

                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
