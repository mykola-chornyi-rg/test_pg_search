class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.text :information, null: false
      t.belongs_to :searchable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
