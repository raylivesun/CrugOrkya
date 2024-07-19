model jade "Description"

    Real time = 2.0;
    Real pop = 1.0;
    Real birthRate = 0.1;
    Real deathRate = 0.01;

    parameter Real delta1 = 0.1;
    parameter Real delta2 = 0.2;
    parameter Real delta3 = 0.3;

equation 

    diffusion = (birthRate - deathRate) * pop * delta1;
    births = birthRate * pop * delta1;    

end jade;