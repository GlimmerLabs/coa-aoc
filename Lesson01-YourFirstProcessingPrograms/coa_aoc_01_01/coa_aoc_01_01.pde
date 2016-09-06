/**
 * coa_aoc_01_01
 *   The first example for lesson 01 of "The Code of Art | The Art of Code".
 *   Draws an oval.
 */

void setup() {
  // Set the size of the window
  size(500,300);
  // Set the number of frames per second (ignore for now)
  frameRate(9);
} // setup()

void draw() {
  // Use a black, thin, pen
  stroke(0);
  strokeWeight(1);

  // Don't fill shapes
  noFill();

  // Draw an ellipse
  ellipse(150, 75, 200, 100);
} // draw()