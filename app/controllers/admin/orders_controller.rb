class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!

  def show
    @order = Order.find(params[:id])
    
  end

  def update
    order = Order.find(params[:id])
    order_details = order.order_details
  order.update(order_params)

    if oreder.order_status == "入金確認"
      order_details.update_all(making_status: "制作待ち")
    end
    redirect_to admins_oreder_path(order.id)
  end
  
  
  private
   def oreder_params
     params.require(:order).permit(:order_status)
   end

end
