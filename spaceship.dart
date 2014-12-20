part of asteroidsofgalaxysio2109;

class Spaceship {
  Board board;
  int x;
  int y;
  int width;
  int height;
  ImageElement spaceship;

  Spaceship(this.board, this.x, this.y, this.width, this.height) {
    spaceship = document.querySelector('#spaceship');
    document.onMouseMove.listen((MouseEvent e) {
      x = e.offset.x - 35;
      y = e.offset.y - 35;
    });
    draw();
  }
 /* Based upon dzenanr/collision_clones
  collision(Spaceship spaceship) {
      if (spaceship.x < x  && spaceship.y < y) {
        if (car.x + car.width >= x && car.y + car.height >= y) {
          dx = -dx; dy = -dy;
          car.dx = -car.dx; car.dy = -car.dy;
        }
      } else if (car.x > x  && car.y < y) {
        if (car.x <= x + width && car.y + car.height >= y) {
          dx = -dx; dy = -dy;
          car.dx = -car.dx; car.dy = -car.dy;
        }
      } else if (car.x < x  && car.y > y) {
        if (car.x + car.width >= x && car.y <= y + height) {
          dx = -dx; dy = -dy;
          car.dx = -car.dx; car.dy = -car.dy;
        }
      } else if (car.x > x  && car.y > y) {
        if (car.x <= x + width && car.y <= y + height) {
          dx = -dx; dy = -dy;
          car.dx = -car.dx; car.dy = -car.dy;
        }
      }
    }
  
 document.onMouseMove.listen((MouseEvent e) {
      if (movable) {
        x = e.offset.x - 35;
        y = e.offset.y - 35;
        if (x > canvas.width) {
          bigger();
          x = canvas.width - 20;
        }
        if (x < 0) {
          bigger();
          x = 20 - width;
        }
        if (y > canvas.height) {
          bigger();
          y = canvas.height - 20;
        }
        if (y < 0) {
          bigger();
          y = 20 - height;
        }
      }

*/ 
  draw() {
    board.context.drawImageToRect(spaceship, new Rectangle(x, y, width, height));
  }
}
