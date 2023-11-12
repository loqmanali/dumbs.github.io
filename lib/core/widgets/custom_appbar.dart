// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import '../helpers/cache_helper.dart';
// import '../styles/app_assets.dart';
// import '../styles/app_colors.dart';
// import 'custom_text.dart';
//
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({
//     super.key,
//     required this.title,
//     this.iconColor,
//     this.backgroundColor,
//     this.actions,
//     this.style,
//     this.leading,
//     this.isHome = true,
//   });
//
//   final String title;
//   final Color? iconColor;
//   final Color? backgroundColor;
//   final List<Widget>? actions;
//   final TextStyle? style;
//   final Widget? leading;
//   final bool isHome;
//
//   @override
//   Size get preferredSize => const Size.fromHeight(70.0);
//
//   bool get _isHome => isHome;
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: AppColor.mainColor,
//       leadingWidth: 100.0.w,
//       leading: Container(
//         padding: EdgeInsets.symmetric(horizontal: 7.w),
//         child: SvgPicture.asset(AppAssets.logoSvg),
//       ).animate().fade(),
//       actions: [
//         _isHome ? GestureDetector(
//           onTap: () {
//             AppNavigator.navigatorTo(context, false, const RequestsManagementScreen());
//           },
//           child: const Icon(
//             Icons.home_filled,
//             color: AppColor.white,
//           ).animate().fade(),
//         ) : const SizedBox(),
//         IconButton(
//           onPressed: () {
//             di<CacheHelper>().removeData(key: 'jwt').then((value) {
//               AppNavigator.navigatorTo(context, true, const LoginScreen());
//             });
//           },
//           icon: SvgPicture.asset(AppAssets.bell),
//         ),
//         BlocBuilder<UserCubit, UserState>(
//           builder: (context, state) {
//             final cubit = context.read<UserCubit>();
//             return Container(
//               alignment: Alignment.center,
//               padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
//               decoration: BoxDecoration(
//                 border: Border.all(color: AppColor.white, width: 1.5),
//                 shape: BoxShape.circle,
//               ),
//               child: CustomText.h6(
//                 text: '${cubit.user?.firstname}'.firstLetter,
//                 alignment: Alignment.center,
//                 color: AppColor.white,
//                 fontSize: 13.0.sp,
//                 fontWeight: FontWeight.bold,
//               ),
//             );
//           },
//         ),
//         BlocBuilder<UserCubit, UserState>(
//           builder: (context, state) {
//             final cubit = context.read<UserCubit>();
//             return CustomText(
//               text: 'Hi, ${cubit.user?.firstname?.toFirstLU}',
//               color: AppColor.white,
//               fontSize: 13.0.sp,
//               fontWeight: FontWeight.bold,
//               padding: EdgeInsets.symmetric(horizontal: 7.w),
//             );
//           },
//         ),
//       ].animateList(),
//     );
//   }
// }
