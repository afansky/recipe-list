class AddUrlToRecipes < ActiveRecord::Migration
  def change
    add_column :recipe_models, :url, :text
  end
end
