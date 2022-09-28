int savedTime = 0;
int six = 250;
int five = 250;
int four = 250;
int three = 250;
int two = 250;
int one = 250;
int open = 250;
int close = 250;
int alarm = 250;
int currentFloor = 1;
String upDown = "";
void setup(){
  size(500, 500);
  background(100);
}
void draw(){
  fill(180);
  rect(25, 25, 450, 450);
  fill(25);
  rect(50, 50, 100, 75);
  fill(250);
  textSize(50);
  text(upDown, 60, 105);
  text(currentFloor,95, 105);
  fill(six);
  rect(50, 175, 30, 30);
  fill(five);
  rect(50, 225, 30, 30);
  fill(four);
  rect(50, 275, 30, 30);
  fill(three);
  rect(50, 325, 30, 30);
  fill(two);
  rect(50, 375, 30, 30);
  fill(one);
  rect(50, 425, 30, 30);
  fill(open);
  rect(250, 175, 30, 30);
  fill(close);
  rect(250, 225, 30, 30);
  fill(alarm);
  rect(250, 275, 30, 30);
  rect(250, 325, 30, 30);
  rect(250, 375, 30, 30);
  rect(250, 425, 30, 30);
  {
    fill(25);
    rect(85, 175, 30, 30);
    rect(85, 225, 30, 30);
    rect(85, 275, 30, 30);
    rect(85, 325, 30, 30);
    rect(85, 375, 30, 30);
    rect(85, 425, 30, 30);
    rect(285, 175, 30, 30);
    rect(285, 225, 30, 30);
    rect(285, 275, 30, 30);
    fill(300, 0, 0);
    rect(285, 325, 30, 30);
    rect(285, 375, 30, 30);
    rect(285, 425, 30, 30);
  }
  fill(250);
  textSize(30);
  text('6', 92, 200);
  text('5', 92, 250);
  text('4', 92, 300);
  text('3', 92, 350);
  text('2', 92, 400);
  text('1', 92, 450);
  textSize(24);
  text("<|>", 286, 197);
  text(">|<", 286, 247);
  PImage alarm = loadImage("alarm.png");
  PImage call = loadImage("call.png");
  PImage callcancel = loadImage("callcancel.png");
  PImage emergency = loadImage("emergency.png");
  alarm.resize(27, 27);
  call.resize(27, 27);
  callcancel.resize(27,27);
  emergency.resize(27,27);
  image(alarm, 287, 277);
  image(call, 287, 327);
  image(callcancel, 287, 377);
  image(emergency, 287, 427);
}

void mousePressed(){
  if(six == 50 && mouseX>50 && mouseY>175 && mouseX<80 && mouseY<205) {
      six = 250;
      upDown = "";
   }else if(six == 250 && mouseX>50 && mouseY>175 && mouseX<80 && mouseY<205){
      if(currentFloor < 6){
        upDown = "^";
      }else{
        upDown = "";
      }
      currentFloor = 6;
      six = 50;
   }
   if(five == 50 && mouseX>50 && mouseY>225 && mouseX<80 && mouseY<255) {
      upDown = "";
      five = 250;
   }else if(five == 250 && mouseX>50 && mouseY>225 && mouseX<80 && mouseY<255) {
      if(currentFloor < 5){
        upDown = "^";
      }else if(currentFloor > 5){
        upDown = "v";
      }else{
        upDown = "";
      }
      currentFloor = 5;
      five = 50;
   }
   if(four == 50 && mouseX>50 && mouseY>275 && mouseX<80 && mouseY<305) {
      upDown = "";
      four = 250;
   }else if(four == 250 && mouseX>50 && mouseY>275 && mouseX<80 && mouseY<305) {
      if(currentFloor < 4){
        upDown = "^";
      }else if(currentFloor > 4){
        upDown = "v";
      }else{
        upDown = "";
      }
      currentFloor = 4;
      four = 50;
   }
   if(three == 50 && mouseX>50 && mouseY>325 && mouseX<80 && mouseY<355) {
      upDown = "";
      three = 250;
   }else if(three == 250 && mouseX>50 && mouseY>325 && mouseX<80 && mouseY<355) {
      if(currentFloor < 3){
        upDown = "^";
      }else if(currentFloor > 3){
        upDown = "v";
      }else{
        upDown = "";
      }
      currentFloor = 3;
      three = 50;
   }
   if(two == 50 && mouseX>50 && mouseY>375 && mouseX<80 && mouseY<405) {
      upDown = "";
      two = 250;
   }else if(two == 250 && mouseX>50 && mouseY>375 && mouseX<80 && mouseY<405) {
      if(currentFloor < 2){
        upDown = "^";
      }else if(currentFloor > 2){
        upDown = "v";
      }else{
        upDown = "";
      }
      currentFloor = 2;
      two = 50;
   }   
   if(one == 50 && mouseX>50 && mouseY>425 && mouseX<80 && mouseY<455) {
      upDown = "";
      one = 250;
   }else if(one == 250 && mouseX>50 && mouseY>425 && mouseX<80 && mouseY<455) {
      if(currentFloor > 1){
        upDown = "v";
      }else{
        upDown = "";
      }
      currentFloor = 1;
      one = 50;
   }
}
