part of asteroidsofgalaxysio2109;

class Board {
  int x = 0;
  int y = 0;
  int width;
  int height;
  Star star1;
  Star star2;
  Star star3;
  Star star4;
  Star star5;
  Star star6;
  Asteroid asteroid1;
  Asteroid asteroid2;
  Asteroid asteroid3;
  Laser laser;
  Spaceship spaceship;
  CanvasRenderingContext2D context;

  Board(CanvasElement canvas) {
    context = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    star1 = new Star(this, 100, -20, 70, 70);
    star2 = new Star(this, 600, -293, 70, 70);
    star3 = new Star(this, 800, -90, 70, 70);
    star4 = new Star(this, 500, -170, 70, 70);
    star5 = new Star(this, 700, -240, 70, 70);
    star6 = new Star(this, 300, -350, 70, 70);
    asteroid1 = new Asteroid(this, 100, 100, 80, 80);
    asteroid2 = new Asteroid(this, 600, -293, 80, 80);
    asteroid3 = new Asteroid(this, 300, -90, 80, 80);
    laser = new Laser(this, 20, 20, 3, 50, asteroid1, asteroid2, asteroid3);
    spaceship = new Spaceship(this, 350, 100, 70, 70);
    border();
    // redraw
    window.animationFrame.then(gameLoop);
  }

  gameLoop(num delta) {
    draw();
    window.animationFrame.then(gameLoop);
  }

  border() {
    context.beginPath();
    context.fillStyle = 'black';  
    context.rect(x, y, width, height);
    context.fillRect(x, y, width, height);
    context.closePath();
    context.stroke();
  }

  clear() {
    context.clearRect(x, y, width, height);
    border();
  }

  draw() {
    clear();
    star1.draw();
    star2.draw();
    star3.draw();
    star4.draw();
    star5.draw();
    star6.draw();
    asteroid1.draw();
    asteroid2.draw();
    asteroid3.draw();
    laser.draw();
    spaceship.draw();
  }
}
