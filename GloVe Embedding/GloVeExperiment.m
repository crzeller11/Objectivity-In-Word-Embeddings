function [DBOccupation, DBAdj, DistOccupation, DistAdj, TopFemaleOcc,...
    TopMaleOcc, TopFemaleAdj, TopMaleAdj ] = GloVeExperiment(Embedding)

% Include if you want a list of sample analogies:
% GloVeExamples(Embedding)

[ FemaleWords, MaleWords, Occupations, Adjectives ]...
    = GenerateCells(); % might not have to run this depending on sequencing
% of experiment runs

[ Subspace ] = GenderDirectionGloVe( Embedding, FemaleWords, MaleWords );

[ DBOccupation, DistOccupation ] = ...
    DirectBiasGloVe(Embedding, Subspace, Occupations);

[ DBAdj, DistAdj ] = ...
    DirectBiasGloVe(Embedding, Subspace, Adjectives);

[ TopFemaleOcc, TopMaleOcc ] = TopTenGloVe(Embedding, Occupations);

[ TopFemaleAdj, TopMaleAdj ] = TopTenGloVe(Embedding, Adjectives);

end
