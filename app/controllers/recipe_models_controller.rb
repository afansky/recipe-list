class RecipeModelsController < ApplicationController
  def index
    @recipes = RecipeModel.all
  end

  def new
    @recipe_model = RecipeModel.new
  end

  def create
    @recipe_model = RecipeModel.new(:name => params[:recipe_model][:name])

    items = params[:items_text]
    items.split(/\r?\n/).each do |item_string|
      item = RecipeItemModel.new(:name => item_string, :done => false)
      @recipe_model.items << item
    end

    @recipe_model.save!

    redirect_to :action => 'show', :id => @recipe_model.id
  end

  def show
    @recipe_model = RecipeModel.find(params[:id])
  end
end
