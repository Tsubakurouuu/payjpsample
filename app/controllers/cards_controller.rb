class CardsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def new
  end
  
  def create
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"] 
    customer = Payjp::Customer.create(
      description: 'test', 
      card: params[:token_id] 
    )
    
    card = Card.new(
      customer_id: customer.id,
      token_id: params[:token_id],
      user_id: current_user.id
    )
  end
end
