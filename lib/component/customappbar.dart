import 'package:choira/comman/colors.dart';
import 'package:flutter/material.dart';

class CustoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leadingIcon;
  final Function()? leadingOnTap;
  final Color leadingIconColor;
  final Widget actionIcon1;
  final Function()? onTapAction1;
  final Color colorAction1;
  final Widget actionIcon2;
  final Function()? onTapAction2;
  final Color colorAction2;

  CustoAppBar({
    required this.leadingIcon,
    this.leadingOnTap,
    this.leadingIconColor = textWhite,
    required this.actionIcon1,
    this.onTapAction1,
    this.colorAction1 = textWhite,
    required this.actionIcon2,
    this.onTapAction2,
    this.colorAction2 = textWhite,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      color: primaryBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: leadingOnTap,
            icon: leadingIcon,
            color: leadingIconColor,
          ),
          Row(
            children: [
              IconButton(
                onPressed: onTapAction1,
                icon: actionIcon1,
                color: colorAction1,
              ),
              IconButton(
                onPressed: onTapAction2,
                icon: actionIcon2,
                color: colorAction2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
