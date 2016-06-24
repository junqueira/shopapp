module CouponsHelper

  def minimum_value
    Coupon.minimum(:minimum_value).to_f
  end
end
