int cameraPositionX, cameraPositionY, cameraPositionZ, lookAtX, lookAtY, lookAtZ;
boolean up, left, right, down, lookUp, lookLeft, lookRight, lookDown, getCloser, getFurther;



void processKey(){
  if(up){
    cameraPositionY += 10;
    lookAtY += 10;
  }
  if(down){
    cameraPositionY -= 10;
    lookAtY -= 10;
  }
  if(left){
    cameraPositionX += 10;
    lookAtX += 10;
  }
  if(right){
    cameraPositionX -= 10;
    lookAtX -= 10;
  }
  if(getCloser){
    cameraPositionZ += 10;
    lookAtZ += 10;
  }
  if(getFurther){
    cameraPositionZ -= 10;
    lookAtZ -= 10;
  }
  if(lookUp){
    lookAtY += 15;
  }
  if(lookDown){
    lookAtY -= 15;
  }
  if(lookLeft){
    lookAtX += 15;
  }
  if(lookRight){
    lookAtX -= 15;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      lookUp = true;
    }
    if (keyCode == DOWN) {
      lookDown = true;
    }
    if (keyCode == LEFT) {
      lookLeft = true;
    }
    if (keyCode == RIGHT) {
      lookRight = true;
    }
    if (keyCode == SHIFT) {
      down = true;
    }
  }
  if (key == 'W' || key == 'w') {
    getCloser = true;
  }
  if (key == 'S' || key == 's') {
    getFurther = true;
  }
  if (key == 'D' || key == 'd') {
    right = true;
  }
  if (key == 'A' || key == 'a') {
    left = true;
  }
  if (key == ' ') {
    up = true;
  }
  if(key == 'R' || key == 'r'){
    cameraPositionX = 0;
    cameraPositionY = 0;
    cameraPositionZ = 0; 
    lookAtX = 0;
    lookAtY = 0;
    lookAtZ = 0;
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      lookUp = false;
    }
    if (keyCode == DOWN) {
      lookDown = false;
    }
    if (keyCode == LEFT) {
      lookLeft = false;
    }
    if (keyCode == RIGHT) {
      lookRight = false;
    }
    if (keyCode == SHIFT) {
      down = false;
    }
  }
  if (key == 'W' || key == 'w') {
    getCloser = false;
  }
  if (key == 'S' || key == 's') {
    getFurther = false;
  }
  if (key == 'D' || key == 'd') {
    right = false;
  }
  if (key == 'A' || key == 'a') {
    left = false;
  }
  if (key == ' ') {
    up = false;
  }
}
