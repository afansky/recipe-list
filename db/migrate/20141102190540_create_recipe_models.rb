class CreateRecipeModels < ActiveRecord::Migration
  def change
    create_table :recipe_models do |t|
      t.text :name

      t.timestamps
    end
  end
end
