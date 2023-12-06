// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mortgage/app/core/constants.dart';

class PropSlider extends StatelessWidget {
  const PropSlider({
    Key? key,
    required this.textEditingController,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    this.divisions,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final double value;
  final double min;
  final double max;
  final int? divisions;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: TextField(
            controller: textEditingController,
            enabled: false,
          ),
        ),
        Positioned(
          bottom: 7,
          child: SizedBox(
            // color: Colors.red,
            width: Get.width - Constants.defaultPad * 2,
            child: Slider(
              divisions: divisions,
              value: value,
              min: min,
              max: max,
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
