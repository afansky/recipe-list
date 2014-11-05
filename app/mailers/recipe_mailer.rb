class RecipeMailer < ActionMailer::Base
  default from: "recipemaildev@gmail.com"

  def recipe_email(email, recipe)
    @url = Recipe::Application.config.recipe_url + recipe.uuid
    @recipe = recipe
    mail(to: email, subject: "Recipe: #{recipe.name}")
  end
end
