/**
 * coa_aoc_01_02
 *   The second example for section 1 of "The Code of Art, The Art of Code".
 *   Draws one or more ovals (ellipses).
 */

// Initial values
float imageWidth = 500;
float imageHeight = 300;
float startX = 150;  // The starting x value
float startY = 75;   // The starting y value
float startW = 200;  // The starting width
float startH = 100;  // The starting height
float startWeight = 1; // The "weight" of lines
float startColor = 0;  // 0-255, 0 is black, 255 is white

// How values might changes
float deltaX = 11;  
float deltaY = 5;
float deltaW = 1;
float deltaH = 2;
float deltaWeight = 0.3;   
float deltaColor = 1;

// Limits on values
float maxWidth = 50;
float maxHeight = 50;

// Values that change
float x;            // The current x value
float y;            // The current y value
float w;            // The current width
float h;            // The current height
float weight;       // The current line weight
float lineColor;    // The current line color

void setup() {
  // Set the size of the window
  size(imageWidth,imageHeight);
  // Set the number of frames per second (ignore for now)
  frameRate(9);
  
  // Initialize x, y, w, and h
  x = startX;
  y = startY;
  w = startW;
  h = startH;
  weight = startWeight;
  lineColor = startColor;
} // setup()

void draw() {
  // Use a black, thin, pen
  stroke(lineColor);
  strokeWeight(weight);
  
  // Don't fill shapes
  noFill();

  // Draw an ellipse
  ellipse(x,y,w,h);
} // draw()
