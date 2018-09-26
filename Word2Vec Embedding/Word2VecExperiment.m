function [DBOccupation, DBAdj, DistOccupation, DistAdj, TopFemaleOcc,...
    TopMaleOcc, TopFemaleAdj, TopMaleAdj] = ...
    Word2VecExperiment(NormalizedWordVecs, WordIndex)

% Include if you want a list of sample analogies:
% Word2VecExamples( NormalizedWordVecs, WordIndex, WordList );

[ FemaleWords, MaleWords, Occupations, Adjectives ]...
    = GenerateCells();

[ Subspace ] = GenderDirectionWord2Vec( WordIndex,...
    NormalizedWordVecs, FemaleWords, MaleWords );


[ DBOccupation, DistOccupation ] = ...
    DirectBiasWord2Vec(WordIndex, NormalizedWordVecs, Subspace, Occupations);

[ DBAdj, DistAdj ] = ...
    DirectBiasWord2Vec(WordIndex, NormalizedWordVecs, Subspace, Adjectives);

[ TopFemaleOcc, TopMaleOcc ] = TopTenW2V(WordIndex,...
    NormalizedWordVecs, Occupations);

[ TopFemaleAdj, TopMaleAdj ] = TopTenW2V(WordIndex,...
    NormalizedWordVecs, Adjectives);

end

