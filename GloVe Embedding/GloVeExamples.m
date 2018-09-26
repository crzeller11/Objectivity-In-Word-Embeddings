function GloVeExamples(emb)

% Test out GloVe Word Embedding with simple analogies
% Simple function to display the model's ability to complete analogies
% Also includes instances of bias

disp('GLOVE ANALOGY EXAMPLES:');

disp('Boy is to girl as brother is to...');
CompleteGloVeAnalogy(emb, 'boy', 'girl', 'brother');

disp('Man is to woman as grandfather is to...');
CompleteGloVeAnalogy(emb, 'man', 'woman', 'grandfather');

disp('Left is to right as up is to...');
CompleteGloVeAnalogy(emb, 'left', 'right', 'up');

disp('Man is to doctor as woman is to...');
CompleteGloVeAnalogy(emb, 'man', 'doctor', 'woman');

disp('Woman is to doctor as man is to...');
CompleteGloVeAnalogy(emb, 'woman', 'doctor', 'man');

disp('Man is to programmer as woman is to...');
CompleteGloVeAnalogy(emb, 'man', 'programmer', 'woman');

disp('Woman is to nurse as man is to...');
CompleteGloVeAnalogy(emb, 'woman', 'nurse', 'man');

disp('Woman is to kind as man is to...');
CompleteGloVeAnalogy(emb, 'woman', 'kind', 'man');

disp('Woman is to emotional as man is to...');
CompleteGloVeAnalogy(emb, 'woman', 'emotional', 'man');

disp('Woman is to bossy as man is to...');
CompleteGloVeAnalogy(emb, 'woman', 'bossy', 'man');

disp('Man is to strong as woman is to...');
CompleteGloVeAnalogy(emb, 'man', 'strong', 'woman');

disp('Man is to brave as woman is to...');
CompleteGloVeAnalogy(emb, 'man', 'brave', 'woman');

disp('Man is to violent as woman is to...');
CompleteGloVeAnalogy(emb, 'man', 'violent', 'woman');

disp('Man is to professor as woman is to...');
CompleteGloVeAnalogy(emb, 'man', 'professor', 'woman');

end