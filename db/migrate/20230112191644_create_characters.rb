class CreateCharacters < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!

  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.text :information, null: false
      t.timestamps
    end

    execute %{
        CREATE INDEX
            characters_keywords_index ON characters
        USING
            gin(to_tsvector('english', information));
    }

    # add_index :characters, :searchable, using: :gin, algorithm: :concurrently
  end
end
