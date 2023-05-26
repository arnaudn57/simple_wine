class ProductsController < ApplicationController

  def index
    @products = Company.find(current_user.companies.first.id).products
  end

  def new
    @product = Product.new
    @company = current_user.companies.first.id
  end

  def create
    @product = Product.new(product_params)
    @product.company_id = current_user.companies.first.id
    if @product.save
      redirect_to products_path(@product)
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :volume, :company_id)
  end

end
