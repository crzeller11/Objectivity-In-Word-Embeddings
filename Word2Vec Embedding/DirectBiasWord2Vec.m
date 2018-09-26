function [ DirectBias, distance_coords ] = DirectBiasWord2Vec(WordIndex, NormalizedVectors, Subspace, WordSet)
% This function takes an embedding, a generated subspace, and a set of
% words to evaluate, and determines, for each word in the wordset, whether
% there is bias in the direction of the subspace.
% Algorithm adapted from the Bolukbasi et al paper: Man is to Computer
% Programmer as Woman is to Homemaker?

% Define strictness of the algorithm (not necessary)
c = 0.8; 

num_words = length(WordSet(:,1));
distances = 0;
distance_coords = zeros(num_words, 1);

for i = 1:num_words
    cur_word = WordSet{i};
    cur_vec = word2vec(WordIndex, NormalizedVectors, cur_word);
    if cur_vec == -1
        continue;
    end
    cur_vec = cur_vec / norm(cur_vec);
    distance = dot(cur_vec, transpose(Subspace));
    distance_coords(i) = distance;
    strict_distance = abs(distance) ^ c; 
    distances = distances + strict_distance;
    
end

DirectBias = distances / num_words;

end
