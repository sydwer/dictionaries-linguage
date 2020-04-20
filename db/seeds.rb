Noun.destroy_all
Word.destroy_all

nouns = ["Apple","Bear","Book", "Cat", "Dinner", "Fish",
"Hello", "House","Hunger", "River","Rock", "Ten","Tree",
]

verbs = ["Able","Eat", "Enjoy", "Die", "Give", "Have", "Say",
"Copula", "Want","Will",
];

tenses =["Past","Present", "Future", "Imperfect", "Conditional"
];

determiners = ["The", "A", "This", "That"
,]

prepositions = ["Around", "By", "From", "To", "Through", "Toward"
];

pronouns = ["I", "You","(Formal) You", "He", "She", "It", "We", "You (Plural)",
"Them", "Them (Masculine)", "Them (Feminine)", "Them (Neutral)",]

prepositions = ["By", "Through", "Along", "For", "Against",
"Towards", "Without","About","From",];

# bear = Noun.create(
#     english: "Bear",
# )

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