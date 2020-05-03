class ItemsController < ApplicationController
  def edit
    recipe = Recipe.find(params[:recipe_id])
    @item = recipe.items.find(params[:id])
  end

  def create
    recipe = Recipe.find(params[:recipe_id])
    item = recipe.items.create(item_params)
    redirect_to recipe_path(@recipe)
  end

  def update
    recipe = Recipe.find(params[:recipe_id])
    item = recipe.items.find(params[:id])
    item.update(item_params)
    redirect_to recipe_path(recipe)
  end

  def destroy
    recipe = Recipe.find(params[:recipe_id])
    item = recipe.items.find(params[:id])
    item.destroy
    redirect_to recipe_path(recipe)
  end

  def create_multiple
    recipe = Recipe.find(params[:recipe_id])

    params[:items].each_line chomp: true do |line|
      quantity, name = line.split "#"

      if name == nil
        name = quantity
        quantity = ""
      end

      quantity.strip!
      name.strip!
      item = recipe.items.create quantity: quantity, name: name
    end

    redirect_to recipe_path(recipe)
  end

  private
    def item_params
      params.require(:item).permit(:name, :quantity)
    end
end
