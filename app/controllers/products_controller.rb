class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    product = Product.new(product_params)
    product.user_id = current_user.id
    product.save!
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :category_id)
  end
end
