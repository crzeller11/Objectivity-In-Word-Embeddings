function [ TopFemale, TopMale ] = TopTenGloVe(Embedding, wordList)


female_vec = word2vec(Embedding, 'woman');
female_vec = female_vec / norm(female_vec);
male_vec = word2vec(Embedding, 'man');
male_vec = male_vec / norm(male_vec);

size_list = size(wordList, 1);

female_distances = zeros(size_list, 1);
male_distances = zeros(size_list, 1);

for i = 1:size_list
    word = wordList{i};
    word_vec = word2vec(Embedding, word);
    word_vec = word_vec / norm(word_vec);
    male_dist = dot(male_vec, word_vec);
    fem_dist = dot(female_vec, word_vec);
    male_distances(i) = male_dist;
    female_distances(i) = fem_dist;
end

descending_fem_dist = sort(female_distances, 'descend');
descending_male_dist = sort(male_distances, 'descend');

for i = 1:(length(descending_fem_dist) - 10)
    if isnan(descending_fem_dist(i))
        descending_fem_dist(i) = [];
    end
    if isnan(descending_male_dist(i))
        descending_male_dist(i) = [];
    end
end

top10fem = descending_fem_dist(11:20, :);
top10male = descending_male_dist(11:20, :);
TopFemale = cell(10,1);
TopMale = cell(10,1);

for i = 1:10
    fem_word = wordList{female_distances == top10fem(i)};
    TopFemale{i} = fem_word;
    male_word = wordList{male_distances == top10male(i)};
    TopMale{i} = male_word;  
end

end

