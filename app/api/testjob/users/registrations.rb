class Testjob::Users::Registrations < Grape::API
  helpers do
    def member_params
      api_params.require(:user).permit(
        :email,
        :password
      )
    end
  end

  resources :registrations do
    params do
      requires :user, type: Hash do
        requires :email,    type: String, desc: 'Email should be unique'
        requires :password, type: String, desc: 'Password should at least 8 characters'
      end
    end

    post do
      @user = User.new(member_params)
      if @user.save
        present :user, @user, with: Entities::User, type: :secret_info
      else
        status 400
        { success: false, error: 'unexpected error',  details: @user.errors.full_messages }
      end
    end
  end
end
