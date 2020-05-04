Word.destroy_all
Language.destroy_all
Dictionary.destroy_all
DictionaryEntry.destroy_all

nouns_words = ["Apple","Bear","Book", "Cat", "Dinner", "Fish",
"Hello", "House","Hunger", "River","Rock", "Ten","Tree"];

pronouns_words = ["I", "You","(Formal) You", "He", "She", "It", "We", "You (Plural)",
"Them", "Them (Masculine)", "Them (Feminine)", "Them (Neutral)"]

verbs_words = ["Able","Eat", "Enjoy", "Die", "Give", "Have", "Say",
"Copula", "Want","Will"];

tenses_words =["Past","Present", "Future", "Imperfect", "Conditional"];

determiners_words = ["The", "A", "This", "That"];

prepositions_words = ["By", "Through", "Along", "For", "Against",
"Towards", "Without","About","From"];

particles_words = ["Topic","Subject", "Object", "Also", "Toward", "From", "By", "At"]

# grammar = [nouns, pronouns, verbs, tenses, determiners, prepositions];

languages = ["English", "German", "Japanese"];





# make all of these just 'word' but then filter for route with category, or make join table?



nouns_words.map{
    |noun| Word.create(
        english: noun,
        category: "noun",
    )
}

apple_test = Word.create(
    english: "Apple",
    category: "noun",
)

verbs_words.map{
    |verb| Word.create(
        english: verb,
        category: "verb",
    )
}

tenses_words.map{
    |tense| Word.create(
        english: tense,
        category: "tense",
    )
}

determiners_words.map{
    |determiner| Word.create(
        english: determiner,
        category: "determiner",
    )
}

pronouns_words.map{
    |pronoun| Word.create(
        english: pronoun,
        category: "pronoun",
    )
}

prepositions_words.map{
    |preposition| Word.create(
        english: preposition,
        category: "preposition",
    )
}

particles_words.map{
    |particle| Word.create(
        english: particle,
        category: "particle",
    )
}


languages.map{
    |language| Language.create(
        name: language
    )
}

nouns = Dictionary.create(
    :part_of_speech => "noun"
)

verbs = Dictionary.create(
    :part_of_speech => "verb"
)

tenses = Dictionary.create(
    part_of_speech: "tense"
)

caseless_pronouns = Dictionary.create(
    part_of_speech: "caseless pronoun"
)

caseless_determiners = Dictionary.create(
    part_of_speech: "caseless determiner"
)

caseless_prepositions = Dictionary.create(
    part_of_speech: "caseless preposition"
)

nominative_pronouns = Dictionary.create(
    part_of_speech: "nominative pronoun"
)

nominative_determiners = Dictionary.create(
    part_of_speech: "nominative determiner"
)

nominative_prepositions = Dictionary.create(
    part_of_speech: "nominative preposition"
)

accusative_pronouns = Dictionary.create(
    part_of_speech: "accusative pronoun"
)

accusative_determiners = Dictionary.create(
    part_of_speech: "accusative determiner"
)

accusative_prepositions = Dictionary.create(
    part_of_speech: "accusative preposition"
)

dative_pronouns = Dictionary.create(
    part_of_speech: "dative pronoun"
)

dative_determiners = Dictionary.create(
    part_of_speech: "dative determiner"
)

dative_prepositions = Dictionary.create(
    part_of_speech: "dative preposition"
)

genitive_pronouns = Dictionary.create(
    part_of_speech: "genitive pronoun"
)

genitive_determiners = Dictionary.create(
    part_of_speech: "genitive determiner"
)

genitive_prepositions = Dictionary.create(
    part_of_speech: "genitive preposition"
)

nominative_suffixes = Dictionary.create(
    part_of_speech: "nominative suffix"
)

accusative_suffixes = Dictionary.create(
    part_of_speech: "accusative suffix"
)

dative_suffixes = Dictionary.create(
    part_of_speech: "dative suffix"
)

genitive_suffixes = Dictionary.create(
    part_of_speech: "genitive suffix"
)

particles = Dictionary.create(
    part_of_speech: "particles"
)

def find(string)
    # array.find{ |entry| entry.english == string }
    target = Word.all.find{ |entry| entry.english == string }
    return target
    
end

apple = DictionaryEntry.create(
    word_id: find("Apple").id,
    dictionary_id: nouns.id
)
bear = DictionaryEntry.create(
    word_id: find("Bear").id,
    dictionary_id: nouns.id
)

book = DictionaryEntry.create(
    word_id: find("Book").id,
    dictionary_id: nouns.id
)

cat = DictionaryEntry.create(
    word_id: find("Cat").id,
    dictionary_id: nouns.id
)

dinner = DictionaryEntry.create(
    word_id: find("Dinner").id,
    dictionary_id: nouns.id
)

fish = DictionaryEntry.create(
    word_id: find("Fish").id,
    dictionary_id: nouns.id
)

hello = DictionaryEntry.create(
    word_id: find("Hello").id,
    dictionary_id: nouns.id
)

house = DictionaryEntry.create(
    word_id: find("House").id,
    dictionary_id: nouns.id
)

hunger = DictionaryEntry.create(
    word_id: find("Hunger").id,
    dictionary_id: nouns.id
)

river = DictionaryEntry.create(
    word_id: find("River").id,
    dictionary_id: nouns.id
)

rock = DictionaryEntry.create(
    word_id: find("Rock").id,
    dictionary_id: nouns.id
)

ten = DictionaryEntry.create(
    word_id: find("Ten").id,
    dictionary_id: nouns.id
)

tree = DictionaryEntry.create(
    word_id: find("Tree").id,
    dictionary_id: nouns.id
)


