library asteroidsofgalaxysio2109;

import 'dart:html';
import 'dart:async';
import 'dart:math';
import 'package:polymer/polymer.dart';  // ajout du package pour Stopwatch
part 'board.dart';
part 'spaceship.dart';
part 'laser.dart';
part 'star.dart';
part 'asteroids.dart';
/*part 'music.dart';  */

main() {
  new Board(document.querySelector('#canvas'));
}