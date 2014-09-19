class Seller::BaseController < ApplicationController
  before_filter :check_privileges!

  def check_privileges!
    redirect_to "/#{current_user.user_type}", notice: 'You dont have enough permissions to be here' unless current_user.is_seller? || current_user.is_admin?
  end
end
