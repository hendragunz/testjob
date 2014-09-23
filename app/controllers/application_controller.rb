class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :check_domain
  # before_action :configure_permitted_parameters, if: :devise_controller?
  # layout :determine_template


  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:subdomain, :user_type, :email, :password, :password_confirmation) }
  # end

  # def after_sign_in_path_for(resource)
  #   case resource.user_type
  #   when 'admin'
  #     admin_root_url(subdomain: current_user.subdomain)
  #   when 'buyer'
  #     buyer_root_url(subdomain: current_user.subdomain)
  #   when 'seller'
  #     seller_root_url(subdomain: current_user.subdomain)
  #   else
  #     root_url(subdomain: false)
  #   end
  # end

  # def after_sign_out_path_for(resource_or_scope)
  #   root_url(subdomain: nil)
  # end

  # private

  # def determine_template
  #   request.xhr? ? 'ajax' : 'application'
  # end

  # def check_domain
  #   subdomain = request.subdomain

  #   if user_signed_in?
  #     if subdomain.present? && (subdomain != 'www') && (subdomain != current_user.subdomain)
  #       return redirect_to root_url(subdomain: current_user.subdomain)
  #     elsif subdomain.blank?
  #       return redirect_to root_url(subdomain: current_user.subdomain)
  #     end
  #   else
  #     if (subdomain != 'www') && subdomain.present?
  #       return redirect_to root_url(subdomain: '')
  #     end
  #   end
  # end
  def index
  end
end
