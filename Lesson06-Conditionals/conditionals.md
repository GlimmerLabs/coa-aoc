Conditionals
============

In writing instructions, we often find that we have to think about
possible conditions and about making choices.  For example, I often
have students in my introductory course try to teach me how to make
a nut butter and jelly sandwich.  They quickly learn that there are
multiple kinds of jars, and that if they tell me to unscrew a pop-top
jar, it's going to take a long time.  (They also discover that if they
don't tell me how to open a jar, I'm fond of smashing them on desks.)
And so they say something like 

> If you have a screw-top jar, grasp the top with your dominant
hand and the body of the jar with your other hand.  Then, repeatedly
twist the top of the jar counter-clockwise until it separates from
the body of the jar.  If, on the other hand, you have a pop-top jar,
....

We will often find that we similarly have to make choices in writing
computer programs.  In Processing, as in most modern computer languages,
the primary mechanism for making choices is the "*if statement*", which
is part of a more general class of ways to make choices called
"*conditionals*".  The if statement normally has one of the following
two forms.

        if (TEST) {
          CONSEQUENT;
        }

        if (TEST) {
          CONSEQUENT;
        } else {
          ALTERNATE;
        }

The first form is for cases in which we do not need an alternate.  
For example, we might say "If the jar is not open, open it."  In
that case, there's nothing we need to do if the jar is already open.

How can we use `if` statements.  There are a wide variety of places
in which you'll find them useful.  We'll consider one simple one, 
in which we make one or more balls (particles?) move about the
screen.

Drawing a moving object
-----------------------

Let's start with the following program, which looks a lot like some
programs you should have written or seen recently, such as the
"tubes" programs from the exercises on randomness.

    ^coa_aoc_06_01/coa_aoc_06_01.pde^

1. In what important ways does this program differ from the "tubes" programs?

2. What do you expect this program to do?

3. Check your answer experimentally.

4. Right now, the ball always moves down and to the right.  How would
you change the program so that the ball moves up and to the left?

5. Make sure you answered the prior question before going on to the
next one.  Maybe even write it down in your journal or sketchbook.

6. Okay, here's one thing I might try.  I'd switch the computation
of the velocities to read

        float horizontalVelocity = -(2 + random(5));
        float verticalVelocity = -(2 + random(5));

7. What effect do you expect those changes to have?

8. Check your prediction by making the modification and running the
modified program.

9. Have you checked your prediction?  Did you expect what happened?
I'll admit that I didn't.  What might I have missed?

10. What I missed is that the ball seems to mostly disappear after
it reaches the top or left edge.  Why?  Well, the positions give us
a hint.  (Or at least they do if you slow down the frame rate.)  They
are always negative.  Why?  Because the remainder operation gives
you negative values for negative inputs.  How can we fix that problem?

11. Have you come up with a solution?  If not, consider the subject of
this reading.

12. Okay, here's my solution.  If the x coordinate is negative, I probably
want to add `width` so that it shifts to the right.  If the y coordinate 
is negative, I want to add `height` so that it shifts down.  I can
accomplish that by adding some conditionals to the end of the `draw` method.

        if (x < 0) {
          x = x + width;
        }
        if (y < 0) {
          y = y + height;
        }

  See if those changes make a difference.

13. I hope that you found that the changes made a difference.  Now, here's
a more complicated question: How can you achieve the same results without 
using conditionals?  (Sorry, no answer here.  If you can't figure it out,
that's okay.  Send me a message and go on to the next step.)

Making the ball bounce
----------------------

Suppose we wanted the ball to "bounce" rather than to "wrap around"
when it reaches an edge.  How can we achieve that?  One idea is to 
change the velocity from positive to negative when it reaches the 
bottom or right, and from negative to positive when it reaches the
top or left.  

Here's an example of what you might write to have it bounce at the
right wall.

First, we change how we compute the position.

        x = x + horizontalVelocity;

Next, we check to see if the position is too far to the right and,
if so, we change the velocity.

    if (x >= width) {
      horizontalVelocity = -(abs(horizontalVelocity));
    }

Here's the program with that change made.

    ^coa_aoc_06_02/coa_aoc_06_02.pde^

1. What do you expect to happen when the ball hits the left edge?  The
right edge?  The top edge? The bottom edge?

2. Check your answer experimentally.

3. As you likely noted, when we get to the left edge, the ball keeps on going
left.  Fix that issue.  Here's the start of the `if` statement to
achieve your goal.

        if (x < 0) {
          ...
        }

4. As you likely noted, when we get to the top edge and bottom edge, the
ball wraps around instead of bouncing.  Fix that problem.

Multiple bouncing balls
-----------------------

What if we want to have more than one ball?  First, we'll need separate
variables for the x position, the y position, the horizontal velocity,
and the vertical velocity of each.  We'll also need separate instructions
to draw each of the balls and change the positions and velocity.  That's
about it.  Here's a start at such a program.

    ^coa_aoc_06_03/coa_aoc_06_03.pde^

1. Run the program to see if it behaves as expected.

2. You may have noted one problem with this program: The balls don't hit
when their edges hit the wall; the balls only bounce when their centers
hit the wall.  Fix that problem.

3. You may have noted another problem with this program: The balls don't
bounce off of each other.  Fix that problem.  (Hint: They should bounce
when their centers are less than `radiusOne + radiusTwo` apart.)

4. Make some changes of your choice to make the program more interesting.
You might consider changing the colors of the balls, adding another ball,
changing velocity or radius over time, and so on and so forth.

