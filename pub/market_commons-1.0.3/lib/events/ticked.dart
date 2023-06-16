import 'dart:async';

class Ticked {
  final Duration duration;
  final Timer timer;

  const Ticked({
    required this.duration,
    required this.timer,
  });
}
