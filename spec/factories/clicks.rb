# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :click do |f|
    f.title { Faker::Name.name }
    f.timestamp { Time.now.utc }
  end
end
