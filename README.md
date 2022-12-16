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

## Alternative constructors

### Linear Gradient
```dart
ImageGradient.linear(
  image: Image.asset("assets/light.png"),
  colors: const [Colors.yellow, Colors.pinkAccent],
)
```

### Radial Gradient
```dart
ImageGradient.radial(
  image: Image.asset("assets/light.png"),
  colors: const [Colors.yellow, Colors.pinkAccent],
)
```

### Sweep Gradient
```dart
ImageGradient.sweep(
  image: Image.asset("assets/light.png"),
  colors: const [Colors.yellow, Colors.pinkAccent],
)
```