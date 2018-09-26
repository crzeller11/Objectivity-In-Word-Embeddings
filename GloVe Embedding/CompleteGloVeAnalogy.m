function CompleteGloVeAnalogy(Embedding, word1, word2, word3)
% Simple function that takes an embedding and three words, and returns the
% consequenting fourth word that completes the analogy

word1_vec = word2vec(Embedding, word1); % man
word2_vec = word2vec(Embedding, word2); % woman
word3_vec = word2vec(Embedding, word3); % king
analogy_completion = vec2word(Embedding, word3_vec + word2_vec - word1_vec);

disp(analogy_completion)

end

