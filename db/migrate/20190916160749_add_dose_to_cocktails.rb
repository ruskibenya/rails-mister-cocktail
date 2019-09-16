class AddDoseToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_reference :cocktails, :dose, index: true
    add_foreign_key :cocktails, :doses
  end
end
