class AddStatusToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :status, :string
  end
end
