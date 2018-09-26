PROJECT 4: USING WORD EMBEDDING TO MEASURE OBJECTIVITY

STUDENT: CHLOE ZELLER
COMPUTER SCIENCE 347: MACHINE LEARNING
FALL 2017, PROFESSOR KATHRYN LEONARD

PROJECT DESCRIPTION:
This project is a small replication of the the Bolukbasi et al. paper:
Man is to Computer Programmer as Woman is to Homemaker? Debiasing Word
Embeddings (Bolukbasi et al., 2016)
This project seeks to use two embedding models, one trained using Google 
News articles, the other trained using Tweets, and compare how biased each
one is on the basis of gender (race was also considered during the analogy
generating phase, but race was not considered when I measured Direct Bias 
due to a lack of feasible opposing race word pairs).

INITIALIZATIONS:
- Required Files
    - README.txt (which you obviously have if you're reading this, congrats!)
    - RUNME.m
    - Before running the RUNME file, make sure you've added the subfolders 
      within project4_ChloeZeller to the file path. To do this, simply right
      click on the project4_ChloeZeller folder, and mouse over "Add to Path," 
      and then click "Selected Folders and Subpaths"

RUNNING EXPERIMENT:
- Execution
    - To execute, simply run the RUNME.m script. 
    - If you would like to play around with some analogies, and see the 
      strength of each model, the CSShowcaseDemo.m script allows you to do
      some analogy completions.
- Output Expectations
    - The RUNME script will return four different variables corresponding to
      the Direct Bias from the two models, 
       - The Direct Bias for all occupational words from the Google News
          dataset.
       - The Direct Bias for all adjectives from the Google News dataset.
       - The Direct Bias for all occupational words from the Twitter 
          dataset. 
       - The Direct Bias for all adjectives from the Twitter dataset.
      two plots that show a given word's distance to the gender direction 
      vector in each dataset (x is the distance to the Google News gender 
      direction, y is the distance to the Twitter gender direction), 8 cell 
      arrays that contain the top 10 closest adjectives and occupations to 
      "female" and "male" in each model, and two correlation statistics (with 
      p values) that describe the correlation corresponding to the graphs that 
      were plotted.


end