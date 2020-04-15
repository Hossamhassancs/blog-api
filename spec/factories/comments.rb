FactoryBot.define do
    factory :comment do
      name { Faker::Lorem.word }
      body { Faker::Lorem.word }
      post_id nil
    end
  end
  