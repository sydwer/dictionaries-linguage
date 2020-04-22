# Noun.destroy_all
Word.destroy_all

nouns = ["Apple","Bear","Book", "Cat", "Dinner", "Fish",
"Hello", "House","Hunger", "River","Rock", "Ten","Tree"];

pronouns = ["I", "You","(Formal) You", "He", "She", "It", "We", "You (Plural)",
"Them", "Them (Masculine)", "Them (Feminine)", "Them (Neutral)"]

verbs = ["Able","Eat", "Enjoy", "Die", "Give", "Have", "Say",
"Copula", "Want","Will"];

tenses =["Past","Present", "Future", "Imperfect", "Conditional"];

determiners = ["The", "A", "This", "That"];

prepositions = ["By", "Through", "Along", "For", "Against",
"Towards", "Without","About","From"];

grammar = [nouns, pronouns, verbs, tenses, determiners, prepositions]

# make all of these just 'word' but then filter for route with category, or make join table?



nouns.map{
    |noun| Word.create(
        english: noun,
        category: "noun",
    )
}

verbs.map{
    |verb| Word.create(
        english: verb,
        category: "verb",
    )
}

tenses.map{
    |tense| Word.create(
        english: tense,
        category: "tense",
    )
}

determiners.map{
    |determiner| Word.create(
        english: determiner,
        category: "determiner",
    )
}

pronouns.map{
    |pronoun| Word.create(
        english: pronoun,
        category: "pronoun",
    )
}

prepositions.map{
    |preposition| Word.create(
        english: preposition,
        category: "preposition",
    )
}

# grammar.map{
#     |part_of_speech_dictionary| part_of_speech_dictionary.map{
#         |entry| Word.create(
#             english: entry,
#             category: part_of_speech_dictionary,
#         )
#     }
# }