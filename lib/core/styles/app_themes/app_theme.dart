// ignore_for_file: depend_on_referenced_packages

import 'package:material_color_utilities/material_color_utilities.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../font_styles.dart';
import '../sizes.dart';


ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: AppColors.appTheme,
    primaryColorLight: AppColors.appTheme.withOpacity(0.7),
    primaryColorDark: AppColor.blackColor,
    disabledColor: AppColor.grey1,

    // ripple color
    splashColor: AppColor.mainColor.withOpacity(0.1),

    // card view theme
    cardTheme: const CardTheme(
      color: AppColor.white,
      shadowColor: AppColor.grey,
      elevation: AppSize.s4,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: AppColor.mainColor,
      elevation: AppSize.s4,
      shadowColor: AppColor.mainColor.withOpacity(0.7),
      titleTextStyle: AppStyle.regularStyle(
        color: AppColor.white,
        fontSize: AppSize.s16,
      ),
    ),

    // button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: AppColor.grey1,
      buttonColor: AppColor.nutritionColor,
      splashColor: AppColor.nutritionColor.withOpacity(0.7),
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 5.0, backgroundColor: AppColor.nutritionColor,
        textStyle: AppStyle.regularStyle(color: AppColor.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
      ),
    ),

    // Text theme
    textTheme: TextTheme(
      displayLarge: AppStyle.boldStyle(color: AppColor.black, fontSize: AppSize.s20),
      displayMedium: AppStyle.semiBoldStyle(
          color: AppColor.lightGrey, fontSize: AppSize.s16),
      displaySmall: AppStyle.semiBoldStyle(
          color: AppColor.lightGrey, fontSize: AppSize.s16),
      headlineMedium: AppStyle.semiBoldStyle(
          color: AppColor.lightGrey, fontSize: AppSize.s16),
      headlineSmall: AppStyle.semiBoldStyle(
          color: AppColor.lightGrey, fontSize: AppSize.s16),
      titleLarge: AppStyle.lightStyle(color: AppColor.lightGrey, fontSize: AppSize.s11),
      titleMedium: AppStyle.mediumStyle(color: AppColor.lightGrey, fontSize: AppSize.s14),
      bodySmall: AppStyle.regularStyle(color: AppColor.grey1),
      bodyLarge: AppStyle.regularStyle(color: AppColor.grey),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: AppStyle.regularStyle(color: AppColor.grey),
      labelStyle: AppStyle.mediumStyle(color: AppColor.blackColor),
      errorStyle: AppStyle.regularStyle(color: AppColor.error),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColor.grey, width: AppSize.s1_5),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            color: AppColor.nutritionColor, width: AppSize.s1_5),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide:
        const BorderSide(color: AppColor.error, width: AppSize.s1_5),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            color: AppColor.nutritionColor, width: AppSize.s1_5),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColor.grey),
  );
}

class NoAnimationPageTransitionsBuilder extends PageTransitionsBuilder {
  const NoAnimationPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    return child;
  }
}

class ThemeSettings {
  ThemeSettings({
    required this.sourceColor,
    required this.themeMode,
  });

  final Color sourceColor;
  final ThemeMode themeMode;
}

class ThemeSettingChange extends Notification {
  ThemeSettingChange({required this.settings});

  final ThemeSettings settings;
}

Color randomColor() {
  return Color(Random().nextInt(0xFFFFFFFF));
}

class CustomColor {
  const CustomColor({
    required this.name,
    required this.color,
    this.blend = true,
  });

  final String name;
  final Color color;
  final bool blend;

  Color value(ThemeProvider provider) {
    return provider.custom(this);
  }
}

class ThemeProvider extends InheritedWidget {
  const ThemeProvider({
    super.key,
    required super.child,
    required this.settings,
    required this.lightDynamic,
    required this.darkDynamic,
  }) : super();

  final ValueNotifier<ThemeSettings> settings;
  final ColorScheme? lightDynamic;
  final ColorScheme? darkDynamic;


  final pageTransitionsTheme = const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: NoAnimationPageTransitionsBuilder(),
      TargetPlatform.macOS: NoAnimationPageTransitionsBuilder(),
      TargetPlatform.windows: NoAnimationPageTransitionsBuilder(),
    },
  );


  Color custom(CustomColor custom) {
    return custom.blend ? blend(custom.color) : custom.color;
  }

  Color blend(Color targetColor) {
    return Color(
        Blend.harmonize(targetColor.value, settings.value.sourceColor.value));
  }


  Color source(Color? target) {
    Color source = settings.value.sourceColor;
    if (target != null) {
      source = blend(target);
    }
    return source;
  }


  ColorScheme colors(Brightness brightness, Color? targetColor) {
    final dynamicPrimary = brightness == Brightness.light
        ? lightDynamic?.primary
        : darkDynamic?.primary;
    return ColorScheme.fromSeed(
      seedColor: dynamicPrimary ?? source(targetColor),
      brightness: brightness,
    );
  }

  ShapeBorder get shapeMedium => RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
  );

  CardTheme cardTheme() {
    return CardTheme(
      elevation: 5,
      shape: shapeMedium,
      clipBehavior: Clip.antiAlias,
    );
  }

  ListTileThemeData listTileTheme(ColorScheme colors) {
    return ListTileThemeData(
      shape: shapeMedium,
      selectedColor: colors.secondary,
    );
  }

  IconThemeData iconTheme(ColorScheme colors) {
    return IconThemeData(
      color: colors.onSurface,
    );
  }

  AppBarTheme appBarTheme(ColorScheme colors) {
    return AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: colors.surface,
      foregroundColor: colors.onSurface,
    );
  }

  TabBarTheme tabBarTheme(ColorScheme colors) {
    return TabBarTheme(
      labelColor: colors.secondary,
      unselectedLabelColor: colors.onSurfaceVariant,
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: colors.secondary,
            width: 2,
          ),
        ),
      ),
    );
  }

  BottomAppBarTheme bottomAppBarTheme(ColorScheme colors) {
    return BottomAppBarTheme(
      color: colors.surface,
      elevation: 0,
    );
  }

  BottomNavigationBarThemeData bottomNavigationBarTheme(ColorScheme colors) {
    return BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: colors.surfaceVariant,
      selectedItemColor: colors.onSurface,
      unselectedItemColor: colors.onSurfaceVariant,
      elevation: 0,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
    );
  }

  NavigationRailThemeData navigationRailTheme(ColorScheme colors) {
    return const NavigationRailThemeData();
  }

  DrawerThemeData drawerTheme(ColorScheme colors) {
    return DrawerThemeData(
      backgroundColor: colors.surface,
    );
  }

  InputDecorationTheme inputDecoration(ColorScheme colors) {
    return InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: AppStyle.regularStyle(color: AppColor.grey),
      labelStyle: AppStyle.mediumStyle(color: AppColor.blackColor),
      errorStyle: AppStyle.regularStyle(color: AppColor.error),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColor.grey, width: AppSize.s1_5),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            color: AppColor.nutritionColor, width: AppSize.s1_5),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide:
        const BorderSide(color: AppColor.error, width: AppSize.s1_5),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            color: AppColor.nutritionColor, width: AppSize.s1_5),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
    );
  }

  ThemeData light([Color? targetColor]) {
    final colorScheme = colors(Brightness.light, targetColor);
    return ThemeData.light().copyWith(
      pageTransitionsTheme: pageTransitionsTheme,
      iconTheme: iconTheme(colorScheme),
      buttonTheme: ButtonThemeData(
        shape: shapeMedium,
      ),
      colorScheme: colorScheme,
      appBarTheme: appBarTheme(colorScheme),
      cardTheme: cardTheme(),
      listTileTheme: listTileTheme(colorScheme),
      bottomAppBarTheme: bottomAppBarTheme(colorScheme),
      bottomNavigationBarTheme: bottomNavigationBarTheme(colorScheme),
      navigationRailTheme: navigationRailTheme(colorScheme),
      tabBarTheme: tabBarTheme(colorScheme),
      drawerTheme: drawerTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.background,
      useMaterial3: true,
      // textTheme: GoogleFonts.robotoTextTheme(),
      inputDecorationTheme: inputDecoration(colorScheme),
      typography: Typography.material2021(
        platform: defaultTargetPlatform,
        englishLike: Typography.englishLike2018,
        dense: Typography.dense2018,
        tall: Typography.tall2018,
      ),
    );
  }


  ThemeData dark([Color? targetColor]) {
    final colorScheme = colors(Brightness.dark, targetColor);
    return ThemeData.dark().copyWith(
      pageTransitionsTheme: pageTransitionsTheme,
      colorScheme: colorScheme,
      appBarTheme: appBarTheme(colorScheme),
      cardTheme: cardTheme(),
      listTileTheme: listTileTheme(colorScheme),
      bottomAppBarTheme: bottomAppBarTheme(colorScheme),
      bottomNavigationBarTheme: bottomNavigationBarTheme(colorScheme),
      navigationRailTheme: navigationRailTheme(colorScheme),
      tabBarTheme: tabBarTheme(colorScheme),
      drawerTheme: drawerTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.background,
      iconTheme: iconTheme(colorScheme),
      inputDecorationTheme: inputDecoration(colorScheme),
      useMaterial3: true,
      typography: Typography.material2021(
        platform: defaultTargetPlatform,
        englishLike: Typography.englishLike2018,
        dense: Typography.dense2018,
        tall: Typography.tall2018,
      ),
    );
  }

  ThemeMode themeMode() {
    return settings.value.themeMode;
  }

  ThemeData theme(BuildContext context, [Color? targetColor]) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.light
        ? light(targetColor)
        : dark(targetColor);
  }

  static ThemeProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant ThemeProvider oldWidget) {
    return oldWidget.settings != settings;
  }
}
