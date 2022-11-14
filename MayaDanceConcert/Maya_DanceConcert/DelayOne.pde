//Delay with one person on each side of dancer(one delayed one not)
class DelayOne extends Scene {

  void display() {
    background(0);
    tint(255);
    Delay(depthImg, 800, 500, 100);
    image(depthImg, 0, 500);
  }

  void keyPressed() {
    if (key=='1') {
      background(0);
      tint(random(0, 255), random(0, 255), random(0, 255));
      Delay(depthImg, 800, 500, 100);
      image(depthImg, 0, 500);
    }
  }
}
