function [ emb ] = ReadPreTrainedSet()

% Note: can only be run at the very begninning, can't rerun
% This script reads the pretrained word embedding from GloVe
% Automatically trained on largest dataset from Twitter

filename = "glove.twitter.27B.200d";
if exist(filename + '.mat', 'file') ~= 2
    emb = readWordEmbedding(filename + '.txt');
    save(filename + '.mat', 'emb', '-v7.3');
else
    disp('Error: You need to delete all existing .mat files before running this script.')
    load(filename + '.mat')
end

end
