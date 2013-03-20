part of invaders;

class Creature {
  Board board;
  int x;
  int y;
  int width;
  int height;
  int random;
  bool reappear = true;
  bool visible = true;
  ImageElement creature;
  ImageElement explosion;

  Creature(this.board, this.x, this.y, this.width, this.height) {
    creature = document.query('#creature');
    explosion = document.query('#explosion');
    // Redraw every 8 ms.
    new Timer.periodic(const Duration(milliseconds: 8), (t) => move());
  }

  move() {
    y = y + 2;
    x = x + 2;
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
      board.context.drawImageAtScale(creature, new Rect(x, y, width, height));
    } else {
      board.context.drawImageAtScale(explosion, new Rect(x, y, width, height));
    }
  }
}