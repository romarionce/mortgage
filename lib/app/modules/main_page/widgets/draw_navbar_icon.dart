import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mortgage/app/core/colors.dart';

class DrawNavbarIcon extends StatelessWidget {
  final String icon;
  final bool active;
  const DrawNavbarIcon({super.key, required this.icon, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SvgPicture.asset(
        'assets/${icon.toLowerCase()}.svg',
        // ignore: deprecated_member_use
        color: active ? ColorsApp.main : ColorsApp.greyText,
      ),
    );
  }
}
