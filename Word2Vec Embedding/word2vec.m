function [ vector ] = word2vec(WordIndex, NormalizedVectors, word)
% Takes a single string and returns it's corresponding vector. 

word_index = getWordIndex(WordIndex, word, false);

% if the word DNE in the embedding, return a vector equalling -1
if (word_index == -1)
    vector = -1;
    disp(word);
    disp('Warning: This word does not appear in the embedding!');
    return;
end

vector = transpose(NormalizedVectors(word_index, :));



end

