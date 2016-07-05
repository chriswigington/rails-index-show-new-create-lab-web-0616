class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    @coupon = Coupon.new
    puts "these are the params: #{params}"
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    puts "Store: #{@coupon.store} and code: #{@coupon.coupon_code}"
    redirect_to coupon_path(@coupon)
  end
end