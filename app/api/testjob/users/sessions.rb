class Testjob::Users::Sessions < Grape::API
  resources :sessions do
    params do
      requires :email,       type: String,  desc: 'Email'
      requires :password,    type: String,  desc: 'Password'
    end
    post do
      @user = User.find_first_by_auth_conditions(email: params[:email])
      if @user && @user.valid_password?(params[:password])
        status 200
        present :user, @user, with: Entities::User, type: :secret_info
      else
        error!({success: false, message: 'Authentication Failed'}, 403)
      end
    end
  end
end
