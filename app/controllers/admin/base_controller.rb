class Admin::BaseController < ApplicationController
  before_filter :check_privileges!

  def check_privileges!
    redirect_to "/#{current_user.user_type}", notice: 'You dont have enough permissions to be here' unless current_user.user_type_admin?
  end
end
