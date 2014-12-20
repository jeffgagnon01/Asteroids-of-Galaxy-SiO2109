part of asteroidsofgalaxysio2109;

class Asteroid {
  Board board;
  int x;
  int y;
  int width;
  int height;
  int random;
  bool reappear = true;
  bool visible = true;
  ImageElement asteroid;
  ImageElement explosion;

  Asteroid(this.board, this.x, this.y, this.width, this.height) {
    asteroid = document.querySelector('#asteroid');
    explosion = document.querySelector('#explosion');
    // Redraw every 8 ms.
    new Timer.periodic(const Duration(milliseconds: 8), (t) => move());
  }

  move() {
    y = y + 2;
    x = x + 0;
    random = new Random().nextInt(900);
    if (y >= board.height) {
      reappear = true;
    } else {
      reappear = false;
    }
    if (reappear) {
      visible = true;
      y = -random;
      x = random;
    }
    draw();
  }

  draw() {
    if (visible) {
      board.context.drawImageToRect(asteroid, new Rectangle(x, y, width, height));
    } else {
      board.context.drawImageToRect(explosion, new Rectangle(x, y, width, height));
    }
  }
}