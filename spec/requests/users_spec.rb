require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:valid_attributes) do
    {
      name: 'Wood'
    }
  end

  describe 'GET /index' do
    before :each do
      @user = User.create! valid_attributes
      get users_path(current_user: @user)
    end

    it 'returns a successful response' do
      expect(response).to be_successful
    end

    it 'renders the correct template' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    before :each do
      @user = User.create! valid_attributes
      get user_path(@user)
    end

    it 'returns a successful response' do
      expect(response).to be_successful
    end

    it 'renders the correct template' do
      expect(response).to render_template(:show)
    end
  end

  describe 'GET /new_post_path' do
    before :each do
      @user = User.create! valid_attributes
      get new_user_post_path(@user)
    end

    it 'returns a successful response' do
      expect(response).to be_successful
    end

    it 'renders the correct template' do
      expect(response).to render_template(:new)
    end
  end
end
