class DonationsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.valid?
      pay_item
      @donation.save
    else
      render 'new'
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:price, :text).merge(user_id: current_user.id,token: params[:token])
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
