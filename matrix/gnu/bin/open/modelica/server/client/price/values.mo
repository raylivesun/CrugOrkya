package coffee "Description"
    
    Real Time = 2.4;
    Real brew = 1.8;
    Real brewingTime = 2.5;
    Real brewlocal = 27;
    Real brewremote = 30;
    Real brewed = 0;
    Real brewedlocal = 0;
    Real brewedremote = 0;
    Real brewedtime = 0;
    Real brewedlocaltime = 0;
    Real brewedremotetime = 0;
    Real brewedremaining = 0;

equation

    // Brewing process
    brewed = brewingTime * brew;
    brewedlocal = brewed * brewlocal / 100;
    brewedremote = brewed * brewremote / 100;
    brewedtime = brewed * brewingTime;
    brewedlocaltime = brewedlocal * brewingTime;
    brewedremotetime = brewedremote * brewingTime;
    brewedremaining = brewed - brewedlocal - brewedremote;
    
end coffee;