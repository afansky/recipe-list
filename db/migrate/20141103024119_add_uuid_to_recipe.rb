class AddUuidToRecipe < ActiveRecord::Migration
  def change
    add_column :recipe_models, :uuid, :string
  end
end
