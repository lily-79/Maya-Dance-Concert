import java.util.*;
ArrayDeque<PImage> buffer = new ArrayDeque<PImage>();

void Delay(PImage x, int h, int w, int t){
  PImage temp = x.copy();
  buffer.addFirst(temp);

  if (frameCount < t)
    return;

  PImage last = buffer.removeLast();
  image(last, h,w);
}
