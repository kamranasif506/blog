require 'swagger_helper'

describe 'Comments API' do
  let(:user_id) { 2 } # Replace 11 with the actual user ID
  let(:post_id) { 5 } # Replace 24 with the actual post ID
  let(:body) { 'This is a test comment' }

  path '/api/v1/users/{user_id}/posts/{post_id}/comments' do
    get 'Retrieves comments for a post' do
      tags 'Comments'
      produces 'application/json'
      parameter name: :user_id, in: :path, type: :string
      parameter name: :post_id, in: :path, type: :string # Add this line

      response '200', 'comments found' do
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
                       body: { type: :string }
                     },
                     required: %w[id body]
                   }
                 }
               }
        run_test!
      end
    end

    post 'Creates a new comment' do
      tags 'Comments'
      consumes 'application/json'
      parameter name: :user_id, in: :path, type: :string
      parameter name: :post_id, in: :path, type: :string
      parameter name: :body, in: :body, schema: {
        type: :object,
        properties: {
          body: { type: :string } # Use 'body' instead of 'text'
        },
        required: ['body'] # Use 'body' instead of 'text'
      }

      response '201', 'comment created' do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 body: { type: :string } # Use 'body' instead of 'text'
               }

        run_test!
      end
    end
  end
end
