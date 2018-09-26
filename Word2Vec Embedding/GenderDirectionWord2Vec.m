function [ gender_subspace ] = GenderDirectionWord2Vec( WordIndex, NormalizedVectors, FemaleWords, MaleWords )
% Function that defines the gender subspace; a directional vector that 
% specifies gender direction (e.g. male to female; aggregated over all 
% cases of male to female gendered words)

% subtract all the instaces from one another
num_words = length(FemaleWords(:,1));
g_vectors = zeros(300, num_words); 

for i = 1:num_words
    female_vec = word2vec(WordIndex, NormalizedVectors, FemaleWords{i});
    male_vec = word2vec(WordIndex, NormalizedVectors, MaleWords{i});
    g_vec = female_vec - male_vec;
    g_vectors(:, i) = g_vec;
end

% aggregate over all instances
pca_gender = pca(transpose(g_vectors));

gender_subspace = pca_gender(:,1);
gender_subspace = gender_subspace / norm(gender_subspace);

end
