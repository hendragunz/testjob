class Testjob::Users::API < Grape::API
  resources :users do
    mount Testjob::Users::Registrations
    mount Testjob::Users::Sessions
  end
end
