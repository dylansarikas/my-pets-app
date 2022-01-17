class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :species
      t.string :name
      t.string :personality
      t.integer :age

      t.timestamps
    end
  end
end
