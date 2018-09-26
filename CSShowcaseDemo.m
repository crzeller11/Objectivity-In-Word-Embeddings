% Computer Science Showcase Demo

%{
Try out an analogy! Run this script, and type in the three words that you
want to try. The words should be entered in this order:
{{Word 1}} is to {{Word 2}} as {{Word 3}} is to...

and then depending on which embedding you choose, the script will return
the word that completes the vector arithmetic!

%}

prompt = 'Which type of embedding? (Twitter or GoogleNews) ';
str = input(prompt,'s');

if (strcmp('Twitter', str)  || strcmp('twitter', str))
    word1 = input('Word 1:', 's');
    word2 = input('Word 2:', 's');
    word3 = input('Word 3:', 's');
    strcat(word1, 'is to' , word2, 'as', word3, 'is to...');
    CompleteGloVeAnalogy(emb, word1, word2, word3)
else
    word1 = input('Word 1:', 's');
    word2 = input('Word 2:', 's');
    word3 = input('Word 3:', 's');
    strcat(word1, 'is to' , word2, 'as', word3, 'is to...');
    
end