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
   //shapes
   clear();
   if(posy == 30){
   posx = 30;
   posy = -10;
 }
   else {
   posx = -10;
   posy = 30;
   }
   drawCreature(30,40,1.02);
   drawCreature(200,-0,1.3);
    drawCreature(20,-80,1.5);
     drawCreature(300,120,1.1);
      drawCreature(100,-0,0.60);
       drawCreature(170,-0,0.40);
       
        drawCreature(80,-0,1.4);
         drawCreature(10,-0,1.6);
          drawCreature(250,-0,0.97);
           drawCreature(130,-0,1.02);
}
void drawCreature(float posx,float posy,float scale){
    creature.scale(scale);
   shape(creature,posx,posy);

}
