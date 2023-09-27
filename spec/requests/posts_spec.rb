require 'rails_helper'

RSpec.describe "Posts", type: :request do
    let(:valid_attributes) do
        {
          title: 'Sample Title',
          body: 'Sample Body'
        }
    end
    
    describe 'GET /index' do
        before :each do
          get users_path
        end
        it 'returns a successful response' do
            expect(response).to be_successful
        end
      
        it 'renders the correct template' do
            expect(response).to render_template(:index)
        end
    
        it 'includes correct placeholder text in the response body' do
          expect(response.body).to include('Here is List of Post for all users')
        end
      end
    
    describe 'GET /posts/:id' do
        before :each do
          @post = Post.create! valid_attributes
          get post_path(@post)
        end
    
        it 'returns a successful response' do
          expect(response).to be_successful
        end
    
        it 'renders the correct template' do
          expect(response).to render_template(:show)
        end
    
        it 'includes correct placeholder text in the response body' do
          expect(response.body).to include('Here is Sppecic Post')
        end
    end
end
