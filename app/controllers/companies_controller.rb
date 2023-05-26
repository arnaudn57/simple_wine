class CompaniesController < ApplicationController


  def show
    @company_id = Company.where(name: params[:name]).first.id
    @company = Company.find(@company_id)
    @products = Company.find(@company_id).products
    @order = Order.new()
  end

  def create_order
    raise
    @company_id = Company.where(name: params[:company_name]).first.id
    @order = @company.orders.build(order_params)
    if @order.save
      redirect_to @company_id, notice: 'La commande a été créée avec succès.'
    else
      render :show
    end
  end

  def new
    @company = Company.new
    @user = current_user
  end

  def create
    @company = Company.new(company_params)
    @company.user_id = current_user.id
    if @company.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :description, :user_id)
  end

  def order_params
    params.require(:order).permit(:product_id, :company_id, :quantity)
  end
end
