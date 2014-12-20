part of asteroidsofgalaxysio2109;

class Laser {
  Board board;
  int x;
  int y;
  int width;
  int height;
  bool hit = true;
  Asteroid asteroid1;
  Asteroid asteroid2;
  Asteroid asteroid3;

  Laser(this.board, this.x, this.y, this.width, this.height,
        this.asteroid1, this.asteroid2, this.asteroid3) {
    document.onClick.listen((MouseEvent e) {
      x = e.offset.x;
      y = e.offset.y - 80;
    });
    
/*    document.keypress.listen((MouseEvent e) {
      if (e.keyCode == 0 || e.keyCode == 32)});    */
      
    
    // Redraw every 8 ms.
    new Timer.periodic(const Duration(milliseconds: 1), (t) => draw());
  }

  draw() {
    y--;
    board.context.beginPath();
    board.context.fillStyle = 'yellow';
    board.context.fillRect(x, y, width, height);
    board.context.closePath();
    board.context.stroke();
    if (x > asteroid1.x && x < asteroid1.x + asteroid1.width &&
        y > asteroid1.y && y < asteroid1.y + asteroid1.height) {
      asteroid1.visible = false;
    }  // permet de détruire plusieurs des 3 astéroides créés aléatoirement
    if (x > asteroid2.x && x < asteroid2.x + asteroid2.width &&
        y > asteroid2.y && y < asteroid2.y + asteroid2.height) {
      asteroid2.visible = false;
    }
    if (x > asteroid3.x && x < asteroid3.x + asteroid3.width &&
        y > asteroid3.y && y < asteroid3.y + asteroid3.height) {
      asteroid3.visible = false;
    }  
  } 
}



