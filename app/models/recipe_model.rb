class RecipeModel < ActiveRecord::Base
  has_many :items, :class_name => 'RecipeItemModel', :autosave => true
  validates :name, presence: true

  def to_param
    uuid
  end
end
