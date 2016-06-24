class CouponsController < ApplicationController
  before_action :set_coupon, only: [:edit, :update, :destroy]

  def index
    @coupons = Coupon.all
  end

  def new
  	@coupon = Coupon.new
  end

  def edit
  end

  def create
  	@coupon = Coupon.new(coupon_params)
  	if @coupon.save
  		redirect_to coupons_url, notice: 'Cupom criado com sucesso.'
  	else
  		render action: 'new'
  	end
  end

  def update
  	if @coupon.update(coupon_params)
  		redirect_to coupons_url, notice: 'Cupom atualizado com sucesso.'
  	else
  		render action: 'edit'
  	end
  end

  def destroy
    @coupon.destroy
    redirect_to coupons_url, notice: 'Coupon was successfully destroyed.'
  end

	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_coupon
	    @coupon = Coupon.find(params[:id])
	  end

	  # Only allow a trusted parameter "white list" through.
	  def coupon_params
	    params.require(:coupon).permit(:description, :minimum_value, :percent)
	  end
end
