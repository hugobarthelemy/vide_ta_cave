class ProductsController < ApplicationController
  # include PgSearch
  skip_before_action :authenticate_user!, only: :index
  # resources :search_by_name_and_category, only: [:index]

  def index
    if params[:query].present?
      @products = Product.search_by_name_and_category(params[:query])
    else
      @products = Product.all
    end
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

  def show
    @product = Product.find_by(id: params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:id, :name, :price, :category_id, :query)
  end
end
