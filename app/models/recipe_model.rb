class RecipeModel < ActiveRecord::Base
  has_many :items, :class_name => 'RecipeItemModel'
end
