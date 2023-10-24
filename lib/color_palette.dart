import 'dart:math';

import 'package:flutter/material.dart';

class ColorPalette {
  static final ColorPalette primary = ColorPalette(<Color>[
    Colors.blue[400] ?? Colors.blue,
    Colors.red[400] ?? Colors.blue,
    Colors.green[400] ?? Colors.blue,
    Colors.yellow[400] ?? Colors.blue,
    Colors.purple[400] ?? Colors.blue,
    Colors.orange[400] ?? Colors.blue,
    Colors.teal[400] ?? Colors.blue,
  ]);

  ColorPalette(List<Color> colors) : _colors = colors {
    assert(colors.isNotEmpty);
  }

  final List<Color> _colors;

  Color operator [](int index) => _colors[index % length];

  int get length => _colors.length;

  Color random(Random random) => this[random.nextInt(length)];
}
