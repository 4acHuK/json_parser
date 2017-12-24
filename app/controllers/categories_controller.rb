class CategoriesController < ApplicationController
  def index
    @categories = Category.order(name: :asc)
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(score: :desc)
  end
end