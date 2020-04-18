Noun.destroy_all
Word.destroy_all

nouns = ["Apple","Bear","Book", "Cat", "Dinner", "Fish",
"Hello", "House","Hunger", "River","Rock", "Ten","Tree",
]

verbs = ["Able","Eat", "Enjoy", "Die", "Give", "Have", "Say",
"Copula", "Want","Will",
];

# bear = Noun.create(
#     english: "Bear",
# )

nouns.map{
    |noun| Noun.create(
        english: noun
    )
}

verbs.map{
    |verb| Word.create(
        english: verb
    )
}
