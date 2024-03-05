class Gizmo {
  //Variable's used in the various methods
  float gizmoX, gizmoY; //X & Y coordinates for Gizmo
  float hueValue = 0; //Hue start value
  String bubbleText = "Hey!"+"\n"+"Turn the light back on!"; //Speech bubble text


  // The Constructor for Gizmo
  Gizmo(float gx, float gy) {
    gizmoX = gx;
    gizmoY = gy;
  }
  
  void gizmoEyes() {  //Drawing Gizmo's eyes
    noStroke();
    fill(255);
    ellipse(gizmoX-25, gizmoY-75, 32, 64);
    ellipse(gizmoX+25, gizmoY-75, 32, 64);
    fill(0);
    ellipse(gizmoX-22, gizmoY-70, 8, 16);
    ellipse(gizmoX+22, gizmoY-70, 8, 16);
  }
  
  void gizmoTie() {   // draw Gizmo's colorful tie
    stroke(0);
    strokeWeight(1);
    pushStyle(); // Save the current settings
    colorMode(HSB, 360, 100, 100); // Sets color mode to HSB
    hueValue += 0.5; // Increase the hue value slowly
    hueValue %= 360; // Wrap the hue value to keep it within the valid range (0 to 360)
    int fillColor = color(hueValue, 100, 100); // converts the hue value to a color
    fill(fillColor);
    quad(gizmoX-10, gizmoY+45, gizmoX, gizmoY-55, gizmoX+10, gizmoY+45, gizmoX, gizmoY+70);
    popStyle(); // returns to pushStyle settings
  }
  
  void gizmoHead() {
    // draw Gizmo's head
    stroke(0);
    strokeWeight(1);
    fill(button.buttonPressed ? 0 : #12C92F); //color based on button press
    ellipse(gizmoX, gizmoY-75, 100, 120);
  }

  void gizmoBody() {
    // sets ellipses and rectangles to CENTER mode
    ellipseMode(CENTER);
    rectMode(CENTER);

    // draw Gizmo's body
    stroke(0);
    strokeWeight(1);
    fill(button.buttonPressed ? 0 : 200);
    rect(gizmoX, gizmoY, 60, 150);

    // draw Gizmo's arms + legs
    stroke(0);
    strokeWeight(5);
    line(gizmoX-30, gizmoY+75, gizmoX-45, gizmoY+120); // Left leg
    line(gizmoX+30, gizmoY+75, gizmoX+45, gizmoY+120); // Right leg
    line(gizmoX-30, gizmoY, gizmoX-45, gizmoY+60);//Left arm
    line(gizmoX+30, gizmoY, gizmoX+45, gizmoY+60);//Right arm
  }

  void gizmoMovement() { //Makes Gizmo move around on the canvas
    if (keyPressed) {
      if (keyCode == LEFT) gizmoX -= 10;
      if (keyCode == RIGHT) gizmoX += 10;
      if (keyCode == UP) gizmoY -=10;
      if (keyCode == DOWN) gizmoY +=10;
    }
  }
  void speechBubble() { //Makes Gizmo speak when you turn off the light
    if (button.buttonPressed) {
      stroke(255);
      noFill();
      ellipse(gizmoX, gizmoY-200, 200, 100);
      fill(255);
      textSize(20);
      textAlign(CENTER, CENTER);
      text(bubbleText, gizmoX, gizmoY-210);
    }
  }
}
