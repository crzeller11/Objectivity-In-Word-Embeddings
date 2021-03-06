function [ female_words, male_words, occupations, adjectives ] = GenerateCells()
% This function simply stores all the cell arrays to be used throughout the
% analysis. 

female_words = { 'actress'; 'girl'; 'bride'; 'sister'; 'countess'; 'mom';...
    'duchess'; 'empress'; 'mother'; 'lady'; 'grandmother'; 'heiress';...
    'hostess'; 'wife'; 'queen'; 'landlady'; 'woman'; 'niece';...
    'policewoman'; 'princess'; 'madam'; 'daughter'; 'stewardess';...
    'aunt'; 'waitress'; 'widow'; 'witch'; 'she'; 'her'; 'mommy';...
    'granddaughter'; 'heroine'; 'lass'; 'female'; 'nun'; 'mama';...
    'priestess' };

male_words = { 'actor'; 'boy'; 'groom'; 'brother'; 'count'; 'dad';...
    'duke'; 'emperor'; 'father'; 'gentleman'; 'grandfather'; 'heir';...
    'host'; 'husband'; 'king'; 'landlord'; 'man'; 'nephew';...
    'policeman'; 'prince'; 'sir'; 'son'; 'steward';...
    'uncle'; 'waiter'; 'widower'; 'warlock'; 'he'; 'his'; 'daddy';...
    'grandson'; 'hero'; 'lad'; 'male'; 'monk'; 'papa';...
    'priest'};

% Take the composition of the 

occupations = {
    'designer'; 'actor'; 'animator'; 'architect'; 'critic'; 'director';...
    'historian'; 'artisan'; 'artist'; 'administrator';'blogger';'baker';...
    'cartoonist';'choreographer';'cinematographer';'colorist';'compositor';...
    'coppersmith';'copywriter';'curator';'dancer';'editor';'equestrian';...
    'engineer';'essayist';'critic';'flatter';'florist';'hairstylist';...
    'illustrator';'journalist';'lyricist';...
    'model';'muralist';'musician';'photographer';'photojournalist';...
    'playwright';'poet';'potter';'printmaker';'reporter';...
    'screenwriter';'sculptor';'silversmith';'writer';'author';...
    'blogger';'ghostwriter';'griot';'scribe';'speechwriter';'mechanic';...
    'miller';'plumber';'woodworker';'bartender';'cashier';'taxidermist';...
    'programmer';'developer';'mathematician';'statistician';'inventor';...
    'scientist';'botanist';'microbiologist';'neuroscientist';...
    'herpetologist';'zoologist';'astronaut';'astronomer';'biochemist';...
    'ecologist';'naturalist';'oceanographer';...
    'pathologist';'geographer';'physicist';'chemist';...
    'geologist';'anesthesiologist';'cardiologist';...
    'endocrinologist';'hematologist';...
    'neurologist';'oncologist';...
    'otolaryngologist';'internist';'pharmacist';...
    'pediatrician';'psychiatrist';'therapist';'psychologist';'counselor';...
    'chiropractor';'radiologist';'obstetrician';...
    'gynecologist';'midwife';'urologist';'nurse';'doctor';'pilot';...
    'lawyer'; 'comedian';'homemaker'; 'receptionist'; 'librarian';...
    'socialite'; 'hairdresser';'nanny'; 'bookkeeper'; 'stylist';...
    'housekeeper'; 'maestro'; 'skipper'; 'protege'; 'savant';...
    'philosopher'; 'captain'; 'financier'; 'warrior'; 'broadcaster';...
    'magician';'boss';'farmer'};

% Commonly associated with men and women, and featured on adjectives to avoid when
% writing a recommendation letter
adjectives = {
    'caring';'compassionate';'conscientious';'dependable';'diligent';...
    'dedicated';'tactful';'interpersonal';'warm';'helpful';'heroic';...
    'pressured';'assertive';'firm';'ambitious';'rational';'strong';...
    'linear';'objective';'dominant';'bold';'knowledgeable';'hardworking';...
    'conscientious';'dependable';'meticulous';'thorough';'diligent';...
    'dedicated'; 'careful';'smart';'sensational';'emotional';'happy';...
    'tepid';'timid';'assertive';'pushy';'depressed';'important';...
    'flexible';'violent';'passive';'complacent';'interesting';'serious';...
    'lazy';'competitive';'dramatic';'stoic';'severe';'scary';'cold';...
    'stupid';'dumb';'logical';'anxious';'impressive';'mad';'angry';...
    'beautiful';'handsome';'clean';'wealthy';'pushy';'weak';'exact';...
    'fair';'objective';'subjective';...
    'cruel';'healthy';'fit';'funny';'intelligent';'focused';'diplomatic';...
    'strange';'clumsy';'expensive';'refreshing';'adaptable';'precocious';...
    'idiotic';'illiterate';'literate';'diligent';'empathetic';...
    'sympathetic';'frank';'gregarious';'persistent';'unwilling';...
    'sensible';'unassuming';'witty'
    
   
};


end