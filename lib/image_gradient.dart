library image_gradient;

import 'package:flutter/material.dart';

class ImageGradient extends StatelessWidget {
  final Image image;
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
