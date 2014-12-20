part of asteroidsofgalaxysio2109;

class Star {
  Board board;
  int x;
  int y;
  int width;
  int height;
  int random;
  bool reappear = true;
  ImageElement star;

  Star(this.board, this.x, this.y, this.width, this.height) {
    star = document.querySelector('#star');
    // Redraw every 8 ms.
    new Timer.periodic(const Duration(milliseconds: 100), (t) => move());
  }

  move() {
    y = y + 2;
    random = new Random().nextInt(900);
    if (y >= board.height) {
      reappear = true;
    } else {
      reappear = false;
    }
    if (reappear) {
      y = -random;
      x = random;
    }
    draw();
  }

  draw() {
    board.context.drawImageToRect(star, new Rectangle(x, y, width, height));
  }
}
