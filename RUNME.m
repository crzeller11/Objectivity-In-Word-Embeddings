% GRAND POO BAH SCRIPT

% Run this script to run the experiment. For futher documentation, see 
% README.txt

load('WORD2VECWORKSPACE.mat');
load('GLOVEWORKSPACE.mat');

[DBOccupation_w2v, DBAdj_w2v, DistOccupation_w2v, DistAdj_w2v, ...
    TopFemaleOcc_w2v, TopMaleOcc_w2v, TopFemaleAdj_w2v, TopMaleAdj_w2v] ...
    = Word2VecExperiment(wordvecs_norm, word2Index);

[DBOccupation_glove, DBAdj_glove, DistOccupation_glove, DistAdj_glove,...
    TopFemaleOcc_glove, TopMaleOcc_glove, TopFemaleAdj_glove,...
    TopMaleAdj_glove ] = GloVeExperiment(emb);

title('Occupation Words Along Gender Direction: Word2Vec by GloVe');
hold on;
plot(DistOccupation_w2v, DistOccupation_glove, '.b', 'MarkerSize', 15);
hold on;
xlabel('Google News Gender Subspace');
hold on;
ylabel('Twitter Gender Subspace');

figure();
title('Adjectives Along Gender Direction: Word2Vec by GloVe');
hold on;
plot(DistAdj_w2v, DistAdj_glove, '.k', 'MarkerSize', 15);
hold on;
xlabel('Google News Gender Subspace');
hold on;
ylabel('Twitter Gender Subspace');

[ SpearmansOccupation, P_Occupation] = corr(DistOccupation_w2v, ...
    DistOccupation_glove, 'type', 'Spearman');
[ SpearmansAdjectives, P_Adjectives ] = corr(DistAdj_w2v, DistAdj_glove,...
    'type', 'Spearman');




