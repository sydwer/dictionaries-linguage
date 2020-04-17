Noun.destroy_all

nouns = ["Apple","Bear","Book", "Cat", "Dinner", "Fish",
"Hello", "House","Hunger", "River","Rock", "Ten","Tree",
]

# bear = Noun.create(
#     english: "Bear",
# )

nouns.map{
    |noun| Noun.create(
        english: noun
    )
}
