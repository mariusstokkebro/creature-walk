PShape creature, head, body,eye;
float posy;
float posx;
void setup(){
  frameRate(10);
  size(800,1000);
  background(0);
  posy = 0;
  posx = 0;
  creature = createShape(GROUP);
  
  //BODYPARTS
  head = createShape(ELLIPSE, 110,190,50,60);
  head.setFill(color(200,150,3));
  head.setStroke(false);
  eye = createShape(ELLIPSE, 110,190,20,30);
  eye.setFill(color(100,100,3));
  eye.setStroke(false);
  body = createShape(RECT, 100,200,70,90);
  body.setFill(color(100,224,56));
  body.setStroke(false);
 
 creature.addChild(head);
 creature.addChild(body);
 creature.addChild(eye);
}

void draw(){
 creature.translate(posx,posy);
 creature.scale(1.05);
 //shapes
 clear();
 shape(creature);
 
 if(posy == 30){
   posx = 30;
   posy = -10;
 }
   else {
   posx = -10;
   posy = 30;
   }
 }
 

  
