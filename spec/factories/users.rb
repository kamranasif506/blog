FactoryBot.define do
    factory :user do
      name { 'John Doe' }  # Replace with your desired default attributes
      photo { 'assets/images/default.jpg' }
      bio { 'Mr: Kamran' }
      # Add other attributes as needed
    end
  end