class Ufo extends GameObjects {
    
  PVector direction;
  int timer;

Ufo(){
 lives = 2;
 timer = 0;
    location = new PVector (-10, random (0, height));
    velocity = new PVector (0, 1);
    

}

void show(){
fill(0, 255, 0);
ellipse(location.x, location.y, 30, 40);
fill(255);
ellipse(location.x, location.y, 20, 10);

}


void act(){
  super.act();
location.x++;
if (location.y > width+10){
timer ++;
if (timer > 1){
  myObjects.add(new Ufo());

}
}


}

}
