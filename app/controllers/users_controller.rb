class UsersController < ActionController::Base
    def inde
        render template: 'users/index'
    end
    def show
        render template: 'users/show'
    end
end
