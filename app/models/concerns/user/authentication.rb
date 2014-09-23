module Concerns::User::Authentication
  extend ActiveSupport::Concern

  included do
    # You likely have this before callback set up for the token.
    before_save :ensure_authentication_token
  end

  def ensure_authentication_token
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end


  module ClassMethods
    def authorize!(env)
      token = env['HTTP_TOKEN']
      return unless token
      User.where(authentication_token: token).first
    end
  end

  private

  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.where(authentication_token: token).first
    end
  end
end
