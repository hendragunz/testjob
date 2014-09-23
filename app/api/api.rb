require 'action_controller/metal/strong_parameters'

class API < Grape::API
  prefix 'api'
  format :json
  default_format :json

  helpers do
    def current_user
      @current_user ||= User.authorize!(env)
    end

    def authenticate!
      error!('401 Unauthorized', 401) unless current_user
    end

    def api_params
      ActionController::Parameters.new(params)
    end
  end

  # mount the nested api
  mount Testjob::My::API
  mount Testjob::Users::API
end
