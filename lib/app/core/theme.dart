import 'package:flutter/material.dart';
import 'package:mortgage/app/core/colors.dart';
import 'package:mortgage/app/core/constants.dart';

class ThemeApp {
  static ThemeData getTheme() {
    return ThemeData.from(
        colorScheme: const ColorScheme.light(
      primary: ColorsApp.main,
      background: ColorsApp.background,
    )).copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorsApp.background,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 32,
          color: ColorsApp.mainText,
          fontWeight: FontWeight.w700,
        ),
      ),
      sliderTheme: SliderThemeData(
        trackHeight: .1,
        thumbColor: ColorsApp.main,
        thumbShape: CustomThumb(7),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 5),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ColorsApp.secondBackground,
        contentPadding: const EdgeInsets.all(Constants.defaultPad),
        isDense: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      dividerTheme: const DividerThemeData(
          space: Constants.defaultPad, color: Colors.transparent),
    );
  }
}

class CustomThumb extends SliderComponentShape {
  final double radius;
  CustomThumb(this.radius);

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size.fromRadius(0);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;
    final Paint strokePaint = Paint()
      ..color = sliderTheme.thumbColor!
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, Paint()..color = ColorsApp.background);
    canvas.drawCircle(center, radius, strokePaint);
  }
}
