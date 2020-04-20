Noun.destroy_all
Word.destroy_all

nouns = ["Apple","Bear","Book", "Cat", "Dinner", "Fish",
"Hello", "House","Hunger", "River","Rock", "Ten","Tree",
]

verbs = ["Able","Eat", "Enjoy", "Die", "Give", "Have", "Say",
"Copula", "Want","Will",
];

tenses =["Past","Present","Future", "Imperfect", "Conditional"
];

determiners = ["The", "A","This", "That"
,]

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
