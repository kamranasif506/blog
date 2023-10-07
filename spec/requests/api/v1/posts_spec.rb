# spec/requests/api/v1/posts_spec.rb

require 'swagger_helper'

describe 'Posts API' do
  let(:user_id) { 1 }

  path '/api/v1/users/{user_id}/posts' do
    parameter name: 'user_id', in: :path, type: :string

    get 'Retrieves all posts for a user' do
      tags 'Posts'
      produces 'application/json'

      response '200', 'Posts found' do
        schema type: :object,
          properties: {
            status: { type: :string },
            message: { type: :string },
            data: {
              type: :array,
              items: {
                type: :object,
                properties: {
                  id: { type: :integer },
                  title: { type: :string },
                  author_id: { type: :integer },
                  text: { type: :string }
                }
              }
            }
          }
        run_test!  
      end

    end
  end
end
