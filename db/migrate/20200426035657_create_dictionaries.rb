class CreateDictionaries < ActiveRecord::Migration[6.0]
  def change
    create_table :dictionaries do |t|
      t.string :part_of_speech
      t.timestamps
    end
  end
end
