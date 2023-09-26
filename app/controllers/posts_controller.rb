class PostsController < ApplicationController
  def index
    render template: 'layouts/posts/index'
  end

  def show
    render template: 'layouts/posts/show'
  end
end
