class Button {
  int buttonX, buttonY; // X and Y coordinates of the button
  int buttonWidth, buttonHeight; // Width and height of the button
  color buttonColor; // Color of the button
  String buttonText; // Text displayed on the button
  boolean buttonPressed = false; // Flag to track if the button is pressed

  // Constructor to initialize the button properties
  Button(int x, int y, int w, int h, color c, String text) {
    buttonX = x;
    buttonY = y;
    buttonWidth = w;
    buttonHeight = h;
    buttonColor = c;
    buttonText = text;
  }
  void displayButton() {
    if (!buttonPressed) { // If the button is not pressed
      fill(buttonColor);
      ellipse(buttonX, buttonY, buttonWidth, buttonHeight);
      fill(0);
      textSize(20);
      textAlign(CENTER, CENTER);
      text(buttonText, buttonX, buttonY);
    }
  }

  boolean isButtonPressed() { //Method to check if button is pressed and then to set buttonPressed to true
    if (mousePressed) {
      if (mouseX > buttonX +-50 && mouseX <buttonX+-50+buttonWidth+-50 && mouseY > buttonY+-50 && mouseY < buttonY+-50+buttonHeight+-50) {
        buttonPressed = !buttonPressed;
      }
    }
    return buttonPressed;
  }
}
