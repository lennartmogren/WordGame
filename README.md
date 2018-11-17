# WordGame

## Practise speaking languages

WordGame is a simple but very efficient tool for practising conversation. What you do is you form a small group. One of you in the group will be given a word in the language you are practising. Your job is to explain the word to the others without mentioning the word you are explaining. The job of the rest of the group is to guess the word and say it out loud.

Every person will have a personal and unique imagage, concept, connotation or narrative pertaining to the word in question. However, there is always common ground so to speak, overlapping areas in the explanatory process that will make it possible to realize the word in the other person's mind. 

What makes this practice so useful is that it mimics real life situations. For instance, you want to express what you mean but can't think of the precise translation of the word you'd use in your mother tongue. In stead of being hung up and mute because you don't remember the word, you convey your thought and you make the other person realise what you mean.

## Evolving WordGame

WordGame can be evolved. Here are some ideas:
- extending the list of languages, that is adding more lists of words in different languages
- creating your own lists of words
- creating your own list of words in a particular field of knowledge (medicine, professional, special subjects etcetera).

The WordGame app is a web app. It runs in any web browser. You can modify the app yourself. The source code is in the [wordgame folder](wordgame/).

## Modifying and adding word lists

Word lists are in file [wordgame/words.js](wordgame/words.js). To add words to an existing word list, edit words.js using a text editor.

To add a new word list, you need to update and create a new section in [wordgame/words.js](wordgame/words.js) and also add an entry in file [wordgame/index.html](wordgame/index.html). See comment around line 280 in index.html for instructions.

To publish your version of WordGame, put the contents of the "wordgame" folder on your web server. Let's say you have your web site at the domain "mylanguageclub.com". If you copy the "wordgame" folder to your web server, it can be reached at "mylanguageclub.com/wordgame".

## History of WordGame

Originally WordGame was a number of sets of 600 cards with words in different languages on them. Used and extremely appreciated by language learners in Sweden for a couple of decades. The publisher ceased to exist and there was no follow up by other publishers. Eventually Mikael Kindborg and myself designed the app replacing the cards with words.

See more at [wordgame.se](http://wordgame.se/)
