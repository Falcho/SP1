Gizmo gizmo;
Button button;

void setup() {
  size(1600, 1200); //Canvas size with space to move around
  gizmo = new Gizmo(300, 600); // a wild Gizmo appears!
  button = new Button(1400, 300, 150, 150, color(255, 0, 0), "Do Not Press"); //Button appears
}
void draw() { //Calling the various diffrent methods on repeat
  background(button.buttonPressed ? 0 : 255); // Change background color based on button press
  button.displayButton();
  button.isButtonPressed();
  gizmo.gizmoBody();
  gizmo.gizmoTie();
  gizmo.gizmoHead();
  gizmo.gizmoEyes();
  gizmo.gizmoMovement();
  gizmo.speechBubble();
}
