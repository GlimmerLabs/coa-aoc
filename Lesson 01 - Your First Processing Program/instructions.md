Lesson 01: Your First Processing Program
========================================

You are now ready to explore a simple Processing program.  At this
stage of learning Processing, you should think about each processing
program having three parts.

In the first part of a program, you declare *global variables*,
which name the values you work with in the program (e.g., the x and
y coordinate of things you are drawing.)  A variable declaration
looks something like the following.

    float x;

or

    float x = 1.0;

The `float` indicates that it's a real number (something computer
scientists and computer programmers refer to as a "floating point"
number, to contrast them with whole numbers, which don't have decimal
points).  We can also write `int` for integers (whole numbers), and
some other things for other kinds of values.

In the second part of the program, you indicate how your Processing should
set up the environment (e.g., the window size) by writing the following
(with some instructions instead of ellipses).  

    void setup() {
      ...
    }

You can specify the size of the window (or at least the initial size),
the color for drawing, and so on and so forth.  

In the third part of the program, you tell Processing what you want
it to draw.  Once again, you mark this section with some words and
symbols and then fill in the details.

    void draw() {
       ...
    }

You can draw lines, ellipses, rectangles, and many other things.

You can put more in a Processing program than this, and there are
some things that you will do differently when you are a more advanced
programmer (and can think about the art of code), but for now, think
about programs having these three parts.

Initial Code
------------

We find that it's easiest if you have some code to think about.  Here
is a program (with no extra global variables) that you will start 
with.

    /**
     * coa_aoc_01
     *   The first example for "The Code of Art | The Art of Code".
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
      ellipse(40, 50, 20, 10);
    } // draw()

In the instructions for `setup` and `draw`, you will see two kinds of
things.  There are some lines that start with two slashes.  Those are
"comments", and are intended as notes to the human reader of the program.
The other things are "commands", and are intended as instructions to 
the computer.  Most commands have a command name (e.g., `size`
or `ellipse`), an open parenthesis, information for the command (e.g.,
the width and height of an ellipse), a close parenthesis, and a semicolon.
We call the information we provide to the command the *parameters*
of the command.  For example, we would say that the `size` command has
parameters 500 and 300.

Okay, that's enough information.  Let's experiment.

1. In your journal, write down what you think this program do.

2. Copy and paste the code into a new Processing project.

3. Click the Run button.

4. Observe and record the output.  Did you get what you expected?

5. There are nine different numbers in this program: 500, 300, 9,
0, 1, 40, 50, 20, and 10.  Try changing each of them and re-running 
the program.  Record what effects you see.  For example,

    1. What happens if you increase the first parameter to `ellipse`
    to 100?  What does that parameter seem to represent?

    2. What happens if you increase the third parameter to `ellipse`
    to 100?  What does that parameter seem to represent?

6. Write instructions to make the ellipse start in the center of the
image, rather than somewhere near the top left.

Using Variables
---------------

You may have noted that it's a bit difficult to keep track of what all of
the numbers stand for.  You may also have noted that even though we told
you that Processing programs have three parts, that first program did not
have the "global variables" that we told you play a role in such programs.
Global variables name things, which makes your program easier to read.

    /**
     * coa-aoc-02
     *   The second example for "The Code of Art, The Art of Code".
     *   Draws one or more ovals (ellipses).
     */

    // Initial values
    float imageWidth = 500;
    float imageHeight = 300;
    float startX = 40;  // The starting x value
    float startY = 50;  // The starting y value
    float startW = 20;  // The starting width
    float startH = 10;  // The starting height
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

As you'll note, we declare a *lot* of variables at the start.  We don't
use all of them (and Processing may warn you about that), but we will
eventually.  You'll also note that there's one new kind of command,
exemplified by `x = startX;`.  These are called *assignment commands*,
and indicate that we should copy the value associated with the right-hand
side to the left-hand side.  (You can also write arithmetic expressions
on the right.)

1. In your journal, write down what you think this program will do.

2. Copy and paste the code into a new Processing project.

3. Click the Run button.

4. Observe and record the output.  Did you get what you expected?

5. Change the values of `startX`, `startY`, and the rest and see what
effects those changes have on your program.

6. Read the Processing documentation for `ellipse` at
<https://processing.org/reference/ellipse_.html> and compare your
understanding to that documentation.

7. The `rect` procedure draws rectangles.  What do you expect to happen
if you replace `ellipse` with `rect`?  Make a note in your journal.

8. Try making that change and record the differences.

9. Read the Processing documentation for `rect` at
<https://processing.org/reference/rect_.html> and take notes as
to what other capabilities are available for rectangles.

10. Switch back to ellipses.

11. As you may have noted, the first two parameters to `rect` are the left
and top edge of the rectangle and the first two parameters to `ellipse` are
the x and y coordinates of the center.  Figure out how to change your program
so that when we draw a rectangle, it is centered at the same place as the
circle.

        // Draw an ellipse
        ellipse(x,y,w,h);
        // Draw a rectangle
        rect( , , , );

Animation
---------

One really nice feature of Processing is that it makes it very easy to
animate things.  In fact, instead of doing the instructions in `draw`
just once, it does them again and again and again and ....  So, the
program you've written doesn't just draw an ellipse.  It draws the same
ellipse over and over and over.

We get more interesting programs by changing how we draw.  For example,
we might change the x position of the ellipse each time we draw.

      // Draw an ellipse
      ellipse(x,y,w,h);

      // Change the x position
      x = x + deltaX;

1. In your journal, write down what effect you think this change will
have.

2. Add the new lines to your program.

3. Click the Run button.

4. Observe and record the output.

5. Try making similar changes to `y`, `width`, `height`, and `color`.

6. Change the values of `deltaX`, `deltaY`, and other variables to explore 
the effects.

7. What do you think will happen if you use negative numbers for
`deltaWidth` and `deltaHeight`?  (Answer the question in your journal.)

8. Try making that change and see what happens.

Filling Circles
---------------

Right now, each circle you draw is outlined.  You can also have each
circle filled.  Instead of writing `noFill();`, you can write
`fill(200);`, using any number between 0 (black) and 255 (white).

1. Try making that change to see the effects.  Your draw method should
look something like the following.

    void draw() {
      // Use a black, thin, pen
      stroke(color);
      strokeWeight(weight);

      // Fill shapes
      fill(255);

      // Draw an ellipse
      ellipse(x,y,w,h);
      
      x = x + deltaX;
      y = y + deltaY;
      w = w + deltaW;
      h = h + deltaH;
    } // draw()

The `fill` command can take an additional parameter, which represents
the "opacity" of the color.  An opaque color covers what's below it.  A
less opaque color lets things show through.  We use 0 for no opacity and
255 for full opacity.

2. Replace `fill(255);` with `fill(50);`.  Sketch the image you expect.

3. Try it and make notes about the effect.

Wrapping Around
---------------

As you may have noted, one problem with our program is that once the
shape goes beyond the right or bottom edge, we no longer see the changes.
What can we do?  Fortunately, Processing has a *remainder* operation,
which we write with a percent sign, `%`.  In general, `x % y` gives the
remainder of `x` divided by `y`.  For example, `22 % 5` is 2, since
22 is 5*4 + 2.

1. Add the following lines to the end of the `draw` section of your program.

      x = x % imageWidth;
      y = y % imageHeight;

2. Run the program and sketch the result.

3. Add the following lines to the end of the `draw` section of your program.

      w = w % maxWidth;
      h = h % maxHeight;

4. Sketch the next few ovals you would expect to see when `w` is 38 and
`h` is 46.

5. Run the program and observe the result.

6. [Optional] As you may have noticed, there is a somewhat abrupt change
when we reach the maximum width and height.  Come up with a strategy for
making the width start to get smaller when it reaches `maxWidth` and
to have the height start to get smaller when it reaches `maxHeight`.  (We
do not yet know how to use conditionals, so you can't use that strategy.
Instead, you need to think about formulae that may help.)

Animation, Revisited
--------------------

As you have likely noted, our drawing is much like the drawing that happens
when you use one piece of paper.  Each time you draw something new, the
previous thing stays there.  But sometimes you want to get rid of what was
there before.  In Processing, the `background(color)` clears the
window and fills it in with a new background.

Consider the following two lines, which we would put at the start of the
draw section.

      // Set the background
      background(128);

1. Note what you expect this to have on our program.

2. Try it and make notes about the effect.
