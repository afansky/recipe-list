class RecipeModel < ActiveRecord::Base
  has_many :items, :class_name => 'RecipeItemModel', :autosave => true

  def to_param
    uuid
  end
end
