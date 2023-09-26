class UsersController < ActionController::Base
    def show
        render template: 'users/show'
    end
end
