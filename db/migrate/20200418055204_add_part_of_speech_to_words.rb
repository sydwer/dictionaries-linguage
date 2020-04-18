class AddPartOfSpeechToWords < ActiveRecord::Migration[6.0]
  def change
    add_column :words, :category, :string
  end
end
