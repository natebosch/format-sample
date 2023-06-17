import 'package:flutter/material.dart';

import 'destination.dart';

class Tile {
  final int value;
  final int x;
  final int y;
  bool merged;
  bool isNew;

  Tile(
    this.value, {
    @required this.x,
    @required this.y,
    this.merged = false,
    this.isNew = false,
  });

  Tile.clone(Tile tile)
      : this(
          tile.value,
          x: tile.x,
          y: tile.y,
          merged: tile.merged,
          isNew: tile.isNew,
        );

  factory Tile.fromDestination(int value, Destination destination) {
    if (destination.hasMerged) {
      return Tile(value * 2, x: destination.x, y: destination.y, merged: true);
    } else {
      return Tile(value, x: destination.x, y: destination.y, merged: false);
    }
  }
}
