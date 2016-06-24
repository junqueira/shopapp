class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if Order.count > 0 && !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
