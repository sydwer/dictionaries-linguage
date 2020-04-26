class CreateRails < ActiveRecord::Migration[6.0]
  def change
    create_table :rails do |t|
      t.string :destroy
      t.string :resource
      t.string :language

      t.timestamps
    end
  end
end
