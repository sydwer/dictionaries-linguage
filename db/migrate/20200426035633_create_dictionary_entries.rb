class CreateDictionaryEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :dictionary_entries do |t|
      t.references :word
      t.references :dictionary
      t.timestamps
    end
  end
end
