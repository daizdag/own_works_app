class DonationsController < ApplicationController

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    binding.pry
    if @donation.valid?
      pay_item
      @donation.save
      return redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:price, :text).merge(token: params[:token])
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"] # 自身のPAY.JPテスト秘密鍵を記述しましょう
    Payjp::Charge.create(
      amount: donation_params[:price],  # 商品の値段
      card: donation_params[:token],    # カードトークン
      currency: 'jpy'                 # 通貨の種類（日本円）
    )
  end

end
