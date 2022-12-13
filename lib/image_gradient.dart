library image_gradient;

import 'package:flutter/material.dart';

/// A widget to apply gradient to image.
class ImageGradient extends StatelessWidget {
  /// Target image
  final Image image;

  ///Gradient to apply
  final Gradient gradient;

  const ImageGradient({super.key, required this.image, required this.gradient});

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
