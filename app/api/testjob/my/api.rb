class Testjob::My::API < Grape::API
  resource :my do
    resource :profile do
      get do
        authenticate!
        present :user, current_user, with: Entities::User
      end
    end
  end
end
