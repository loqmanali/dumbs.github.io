import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final Widget? name;
  final Widget? icon;
  final void Function()? onTap;
  final Color? tileColor;
  final EdgeInsetsGeometry? contentPadding;

  const DrawerItem({
    Key? key,
    this.name,
    this.icon,
    this.onTap,
    this.tileColor,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      contentPadding: contentPadding,
      tileColor: tileColor,
      title: name,
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: icon,
      ),
      onTap: onTap,
    );
  }
}
