function Word2VecExamples( NormalizedWordVecs, Word2Index, WordList )

% Simple function to display the model's ability to complete analogies
% Also includes instances of bias
disp('Boy is to girl as brother is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'boy', 'girl', 'brother')));

disp('Man is to woman as grandfather is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'man', 'woman', 'grandfather')));

disp('Left is to right as up is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'left', 'right', 'up')));

disp('Man is to doctor as woman is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'man', 'doctor', 'woman')));

disp('Woman is to doctor as man is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'woman', 'doctor', 'man')));

disp('Man is to programmer as woman is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'man', 'programmer', 'woman')));

disp('Woman is to nurse as man is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'woman', 'nurse', 'man')));

disp('Woman is to caring as man is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'woman', 'caring', 'man')));

disp('Woman is to emotional as man is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'woman', 'emotional', 'man')));

disp('Woman is to bossy as man is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'woman', 'bossy', 'man')));

disp('Man is to strong as woman is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'man', 'strong', 'woman')));

disp('Man is to brave as woman is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'man', 'brave', 'woman')));

disp('Man is to violent as woman is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'man', 'violent', 'woman')));

disp('Man is to professor as woman is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'man', 'professor', 'woman')));

disp('African American is to bad as caucasian is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'african_american', 'bad', 'caucasian')));

disp('Cookie is to milk as chips are to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'cookie', 'milk', 'chips')));

disp('African American is to illiterate as caucasian is to...');
disp(WordList(complete_analogy(NormalizedWordVecs, Word2Index, 'african_american', 'illiterate', 'caucasian')));

end

