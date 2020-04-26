class DictionaryEntry < ApplicationRecord
    belongs_to :word 
    belongs_to :dictionary
end
