import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mortgage/app/core/colors.dart';

class DrawProfileTile extends StatelessWidget {
  final void Function() fun;
  final String asset;
  final String text;
  const DrawProfileTile(
      {super.key, required this.fun, required this.asset, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: fun,
      titleAlignment: ListTileTitleAlignment.center,
      leading: Container(
        width: 36,
        height: 36,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorsApp.light,
        ),
        child: SvgPicture.asset('assets/$asset.svg'),
      ),
      title: Text(text),
      trailing: const Icon(
        Icons.chevron_right,
        size: 23,
        color: Colors.black,
      ),
    );
  }
}
