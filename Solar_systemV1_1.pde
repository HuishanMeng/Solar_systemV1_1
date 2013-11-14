import ddf.minim.*;
Minim mrDJ;
AudioPlayer eightTrack;
PImage imgCosmos;
PImage imgSun;
PImage imgMercury;
PImage imgVenus;
PImage imgEarth;
PImage imgMoon;
PImage imgMars;
int xSun;
int ySun;
float theta ; 
int distance=70;
void setup(){
size(1000,800);
imgSun=loadImage("Sun.png");
imgMercury=loadImage("Mercury.png");
imgVenus=loadImage("Venus.png");
imgEarth=loadImage("Earth.png");
imgMoon=loadImage("Moon.png");
imgMars=loadImage("Mars.png");
imgCosmos=loadImage("Cosmos.png");
mrDJ = new Minim(this);
eightTrack = mrDJ.loadFile("Palace Museum.mp3");
eightTrack.play();
frameRate(5);
}
void draw(){
background(imgCosmos);
xSun=width/2;
ySun=height/2;
theta= frameCount*PI/100;
pushMatrix();  //Sun.Matrix
translate(xSun,ySun);
rotate(-theta);
imageMode(CENTER);
image(imgSun,0,0);
pushMatrix();//Mercury.Matrix
translate(distance, distance);
image(imgMercury,0,0);
popMatrix();
pushMatrix();//Venus.Matrix
rotate(-3*theta);
translate(1.5*distance,1.5*distance);
image(imgVenus,0,0);
popMatrix();
pushMatrix(); //Earth.Matrix
rotate(-2*theta);
translate(2.5*distance,2.5*distance);
image(imgEarth,0,0);
pushMatrix();// MOON
rotate(-20*theta);
translate(distance/2,distance/2);
image(imgMoon,0,0);
popMatrix();
popMatrix();
pushMatrix();//Mars
rotate(-0.2*theta);
translate(3.5*distance,3.5*distance);
image(imgMars,0,0);
popMatrix();
popMatrix();
}
