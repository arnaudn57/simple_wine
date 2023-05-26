class OrdersController < ApplicationController

  # def create
  #   @order = Order.new(order_params)
  #   # @order.company_id = params[:company_id]
  #   # @order.user_id = current_user.id
  #   if @order.save
  #     redirect_to company_path(params[:company_id])
  #   else
  #     render :new
  #   end
  # end

  # private

  # def order_params
  #   params.require(:order).permit(:product_id, :company_id)
  # end
end
