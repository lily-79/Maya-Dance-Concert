class BasicDelayOne extends Scene {

  void display() {
    image(depthImg,500,500);
    Delay(depthImg, 0, 500,100);
  }

  void keyPressed() {
  }
}
