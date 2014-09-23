module Entities
  class User <  Grape::Entity
    expose :id, :email, :subdomain, :user_type
  end
end
