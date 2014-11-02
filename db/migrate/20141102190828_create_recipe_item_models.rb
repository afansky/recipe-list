class CreateRecipeItemModels < ActiveRecord::Migration
  def change
    create_table :recipe_item_models do |t|
      t.text :name
      t.boolean :done
      t.belongs_to :recipe_model

      t.timestamps
    end
  end
end
