import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static String fromColorRGBOtoHex(Color color) {
    return color.toString().substring(10, 16);
  }
}

extension HexColorExtension on String {
  Color toColor() {
    return HexColor(this);
  }
}

extension ColorToHex on Color {
  String toHex() {
    return '#${toString().substring(10, 16)}';
  }
}