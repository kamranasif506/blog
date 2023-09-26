class UsersController < ApplicationController
  def index
    render template: 'layouts/users/index'
  end

  def show
    render template: 'layouts/users/show'
  end
end
