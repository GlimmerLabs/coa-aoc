Randomness and Noise
====================

As you've seen, we can produce some fairly interesting images and
animations using just a few basic Processing operations.  However,
for a given program, the results are the same.  And that's a behavior
we like computers to have - if you deposit money in the bank, you'd like
it always to act the same way, and not "accidentally" decide to credit
you less than you deposited.

However, for artistic interest (and, often, for other purposes), we might
want the computer to be a bit less predictable.

    // Noise stuff
    float xnoise;
    float ynoise;

      xnoise = random();
      ynoise = random();

      x = x + deltaX*noise(xnoise);
      y = y + deltaY*noise(ynoise);
 
     xnoise += 0.2;
     ynoise += 0.1;

Add
 
      w = w + deltaW*(0.5 - noise(xnoise));
      h = h + deltaH*(0.5 - noise(ynoise));

What do you observe about the shapes?  What does that suggest?
