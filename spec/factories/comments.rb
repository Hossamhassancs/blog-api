FactoryBot.define do
    factory :comment do
      name { Faker::StarWars.character }
      body { Faker::Lorem.word }
      post_id nil
    end
  end
  