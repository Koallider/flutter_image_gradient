# image_gradient

This package can be used to apply gradient to image in Flutter.

The best usecase is to apply colors to grayscale images. For example light beams.

## Demo

[Live Demo](https://koallider.github.io/image_gradient_flutter/#/)

![image](https://github.com/Koallider/image_gradient_flutter/blob/main/example/gif_example.gif?raw=true)

## Installation

```yaml
dependencies:
  ...
  image_gradient: ^0.0.1
```

## Usage

```dart
ImageGradient(
  image: Image.asset("assets/light.png"),
  gradient: const RadialGradient(colors: [Colors.deepOrange, Colors.purpleAccent]),
)
```
