import org.openkinect.freenect.*;
import org.openkinect.processing.*;

ArrayList<Scene> scenes = new ArrayList<Scene>();
Scene current;
int i;

Kinect kinect;
PImage depthImg;
int minDepth =  100; //100
int maxDepth = 1020; //1020

void setup() {
  background(0);
  noCursor();
  fullScreen();
  kinect = new Kinect(this);
  kinect.initDepth();
  depthImg = new PImage(kinect.width, kinect.height);
  scenes.add(new DelayTwo()); 
  scenes.add(new DelayOne()); 
}

void updateDepthImage()
{
  // Threshold the depth image
  int[] rawDepth = kinect.getRawDepth();
  for (int i=0; i < rawDepth.length; i++) {
    if (rawDepth[i] >= minDepth && rawDepth[i] <= maxDepth) {
      depthImg.pixels[i] = color(255);
    } else {
      depthImg.pixels[i] = color(0);
    }
  }
  // Draw the thresholded image
  depthImg.updatePixels();
}

void draw() {
  updateDepthImage();
  current = scenes.get(i);
  current.display();
  current.keyPressed();
}

void keyPressed() {
  if (key=='q') {
    i+=1;
    if (i >= scenes.size()) i = 0;
  }
}
