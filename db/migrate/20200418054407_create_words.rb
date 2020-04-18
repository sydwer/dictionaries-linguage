class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :english
      t.string :IPA
      t.string :latin
      
      t.timestamps
    end
  end
end
