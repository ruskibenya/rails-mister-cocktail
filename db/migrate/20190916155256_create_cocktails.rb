class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :glass
      t.string :base_spirit
      t.string :flavor
      t.string :difficulty
      t.string :prep_time
      t.string :description
      t.string :photo
      t.string :strength
      t.string :garnish
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
