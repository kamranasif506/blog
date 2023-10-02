FactoryBot.define do
    factory :post do
      title { 'Sample Post' }  # Replace with your desired default attributes
      text { 'This is a sample post.' }
      association :author, factory: :user  # Assuming you have a user factory defined
      # Add other attributes as needed
    end
  end