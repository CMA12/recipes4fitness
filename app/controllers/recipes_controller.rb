class RecipesController < ApplicationController


  def index
    @show_navbar = true
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end


end
