class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @forums = @category.forums
  end
end
