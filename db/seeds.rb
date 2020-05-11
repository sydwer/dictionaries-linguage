Word.destroy_all
Language.destroy_all
Dictionary.destroy_all
DictionaryEntry.destroy_all

nouns_english = ["Apple","Bear","Book", "Cat", "Dinner", "Fish",
"Hello", "House","Hunger", "River","Rock", "Ten","Tree"];

pronouns_english = ["I", "You","(Formal) You", "He", "She", "It", "We", "(Plural) You",
"Them", "(Masculine) Them", "(Feminine) Them", "(Neutral) Them"]

verbs_english = ["Able","Eat", "Enjoy", "Die", "Give", "Have", "Say",
"Copula", "Want","Will"];

tenses_english =["Past","Present", "Future", "Imperfect", "Conditional", "Non-Past"];

determiners_english = ["The", "A", "This", "That", "(Close To Speaker)","(Close To Listener)",
"(Far From Listener And Speaker)", "(Which One)"];

prepositions_english = ["By", "Through", "Along", "For", "Against",
"Towards", "Without","About","From"];

particles_english = ["Topic","Subject", "Object", "Also", "Toward", "From", "By", "At"]

# grammar = [nouns, pronouns, verbs, tenses, determiners, prepositions];

languages = ["English", "German", "Japanese"];





# make all of these just 'word' but then filter for route with category, or make join table?



nouns_words = nouns_english.map{
    |noun| Word.create(
        english: noun,
        category: "noun",
    )
}

# apple_test = Word.create(
#     english: "Apple",
#     category: "noun",
# )

verbs_words = verbs_english.map{
    |verb| Word.create(
        english: verb,
        category: "verb",
    )
}

tenses_words = tenses_english.map{
    |tense| Word.create(
        english: tense,
        category: "tense",
    )
}

determiners_english.map{
    |determiner| Word.create(
        english: determiner,
        category: "determiner",
    )
}

pronouns_words = pronouns_english.map{
    |pronoun| Word.create(
        english: pronoun,
        category: "pronoun",
    )
}

prepositions_english.map{
    |preposition| Word.create(
        english: preposition,
        category: "preposition",
    )
}

particles_english.map{
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

def find(array, string)
    target = array.find{ |entry| entry.english == string }
    # target = Word.all.find{ |entry| entry.english == string }
    return target
    
end

apple = DictionaryEntry.create(
    word_id: find(nouns_words,"Apple").id,
    dictionary_id: nouns.id
)
bear = DictionaryEntry.create(
    word_id: find(nouns_words,"Bear").id,
    dictionary_id: nouns.id
)

book = DictionaryEntry.create(
    word_id: find(nouns_words,"Book").id,
    dictionary_id: nouns.id
)

cat = DictionaryEntry.create(
    word_id: find(nouns_words,"Cat").id,
    dictionary_id: nouns.id
)

dinner = DictionaryEntry.create(
    word_id: find(nouns_words,"Dinner").id,
    dictionary_id: nouns.id
)

fish = DictionaryEntry.create(
    word_id: find(nouns_words,"Fish").id,
    dictionary_id: nouns.id
)

hello = DictionaryEntry.create(
    word_id: find(nouns_words,"Hello").id,
    dictionary_id: nouns.id
)

house = DictionaryEntry.create(
    word_id: find(nouns_words,"House").id,
    dictionary_id: nouns.id
)

hunger = DictionaryEntry.create(
    word_id: find(nouns_words,"Hunger").id,
    dictionary_id: nouns.id
)

river = DictionaryEntry.create(
    word_id: find(nouns_words,"River").id,
    dictionary_id: nouns.id
)

rock = DictionaryEntry.create(
    word_id: find(nouns_words,"Rock").id,
    dictionary_id: nouns.id
)

ten = DictionaryEntry.create(
    word_id: find(nouns_words,"Ten").id,
    dictionary_id: nouns.id
)

tree = DictionaryEntry.create(
    word_id: find(nouns_words,"Tree").id,
    dictionary_id: nouns.id
)

i = DictionaryEntry.create(
    word_id: find(pronouns_words, "I").id,
    dictionary_id: caseless_pronouns.id
)

you = DictionaryEntry.create(
    word_id: find(pronouns_words, "You").id,
    dictionary_id: caseless_pronouns.id
)

formal_you = DictionaryEntry.create(
    word_id: find(pronouns_words, "(Formal) You").id,
    dictionary_id: caseless_pronouns.id
)

he = DictionaryEntry.create(
    word_id: find(pronouns_words, "He").id,
    dictionary_id: caseless_pronouns.id
)

she = DictionaryEntry.create(
    word_id: find(pronouns_words, "She").id,
    dictionary_id: caseless_pronouns.id
)

it = DictionaryEntry.create(
    word_id: find(pronouns_words, "It").id,
    dictionary_id: caseless_pronouns.id
)

we = DictionaryEntry.create(
    word_id: find(pronouns_words, "We").id,
    dictionary_id: caseless_pronouns.id
)

plural_you = DictionaryEntry.create(
    word_id: find(pronouns_words, "(Plural) You").id,
    dictionary_id: caseless_pronouns.id
)

masculine_them = DictionaryEntry.create(
    word_id: find(pronouns_words, "(Masculine) Them").id,
    dictionary_id: caseless_pronouns.id
)

feminine_them = DictionaryEntry.create(
    word_id: find(pronouns_words, "(Feminine) Them").id,
    dictionary_id: caseless_pronouns.id
)

neutral_them = DictionaryEntry.create(
    word_id: find(pronouns_words, "(Neutral) Them").id,
    dictionary_id: caseless_pronouns.id
)


able = DictionaryEntry.create(
    word_id: find(verbs_words, "Able").id,
    dictionary_id: verbs.id
)

eat = DictionaryEntry.create(
    word_id: find(verbs_words, "Eat").id,
    dictionary_id: verbs.id
)

enjoy = DictionaryEntry.create(
    word_id: find(verbs_words, "Enjoy").id,
    dictionary_id: verbs.id
)

die = DictionaryEntry.create(
    word_id: find(verbs_words, "Die").id,
    dictionary_id: verbs.id
)

give = DictionaryEntry.create(
    word_id: find(verbs_words, "Give").id,
    dictionary_id: verbs.id
)

have = DictionaryEntry.create(
    word_id: find(verbs_words, "Have").id,
    dictionary_id: verbs.id
)

say = DictionaryEntry.create(
    word_id: find(verbs_words, "Say").id,
    dictionary_id: verbs.id
)

copula = DictionaryEntry.create(
    word_id: find(verbs_words, "Copula").id,
    dictionary_id: verbs.id
)

want = DictionaryEntry.create(
    word_id: find(verbs_words, "Want").id,
    dictionary_id: verbs.id
)

will = DictionaryEntry.create(
    word_id: find(verbs_words, "Will").id,
    dictionary_id: verbs.id
)

past = DictionaryEntry.create(
    word_id: find(tenses_words, "Past"),
    dictionary_id: tenses.id
)

present = DictionaryEntry.create(
    word_id: find(tenses_words. "Present"),
    dictionary_id: tenses.id
)

future = DictionaryEntry.create(
    word_id: find(tenses_words. "Future"),
    dictionary_id: tenses.id
)

imperfect = DictionaryEntry.create(
    word_id: find(tenses_words. "Imperfect"),
    dictionary_id: tenses.id
)

conditional = DictionaryEntry.create(
    word_id: find(tenses_words. "Conditional"),
    dictionary_id: tenses.id
)

non_past = DictionaryEntry.create(
    word_id: find(tenses_words. "Non-Past"),
    dictionary_id: tenses.id
)

determiners_english = ["The", "A", "This", "That", "(Close To Speaker)","(Close To Listener)",
"(Far From Listener And Speaker)", "(Which One)"];

