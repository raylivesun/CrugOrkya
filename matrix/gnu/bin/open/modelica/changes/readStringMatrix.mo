model M "Description"

     Real time = 2.0;
     Real period = 1.0;
     Real x = 0.0;
     Real y = 0.0;

equation
         // # (5) Update the position of the object
         x = x + time * 2.0 * cos(2.0 * pi * time / period);
         y = y + time * 2.0 * sin(2.0 * pi * time / period);
         // # (6) Check if the object has reached the boundary
end M;