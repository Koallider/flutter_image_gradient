library image_gradient;

import 'dart:math';

import 'package:flutter/material.dart';

/// A widget to apply gradient to image.
class ImageGradient extends StatelessWidget {
  /// Target image
  final Image image;

  ///Gradient to apply
  final Gradient gradient;

  const ImageGradient({super.key, required this.image, required this.gradient});

  ImageGradient.linear({
    super.key,
    required this.image,
    required List<Color> colors,
    Alignment begin = Alignment.centerLeft,
    Alignment end = Alignment.centerRight,
  }) : gradient = LinearGradient(colors: colors, begin: begin, end: end);

  ImageGradient.radial(
      {super.key,
      required this.image,
      required List<Color> colors,
      Alignment center = Alignment.center,
      double radius = 0.5})
      : gradient =
            RadialGradient(colors: colors, center: center, radius: radius);

  ImageGradient.sweep({
    super.key,
    required this.image,
    required List<Color> colors,
    Alignment center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = pi * 2,
  }) : gradient = SweepGradient(
            colors: colors,
            center: center,
            startAngle: startAngle,
            endAngle: endAngle);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.modulate,
      shaderCallback: (bounds) {
        return gradient.createShader(bounds);
      },
      child: image,
    );
  }
}
