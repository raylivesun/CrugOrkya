model vegan "Description"

    Real description = 4.8;
    Real Relevance = 0.9;
    Real Importance = 0.6;
    Real Cost = 0.4;
    Real Healthiness = 0.3;
    Real Accessibility = 0.2;
    Real Value = description * Relevance * Importance * Cost * Healthiness * Accessibility;
    output Real Value;
    
end vegan;