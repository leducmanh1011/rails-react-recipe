class Api::V1::RecipesController < ApplicationController
  before_action :load_recipe, only: %i(show destroy)

  def index
    recipes = Recipe.newest
    render json: {status: :ok, data: {recipes: recipes}}
  end

  def create
    recipe = Recipe.new recipe_params
    if recipe.save
      render json: {status: :ok, data: {recipe: recipe}}
    else
      render json: {status: :bad_request, data: {errors: recipe.errors}}
    end
  end

  def show
    render json: {status: :ok, data: {recipe: recipe}}
  end

  def destroy
    if @recipe&.destroy
      render json: {status: :ok}
    else
      render json: {status: :bad_request, data: {errors: recipe.errors}}
    end
  end

  private

  def recipe_params
    params.permit(:name, :image, :ingredients, :instruction)
  end

  def load_recipe
    @recipe ||= Recipe.find_by_id params[:id]
  end
end
