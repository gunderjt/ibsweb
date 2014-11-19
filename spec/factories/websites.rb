FactoryGirl.define do
  factory :website do
    association :personnel, factory: :personnel
    association :website_type, factory: :website_type
    url {  Faker::Internet.url }
    display_name "HomeSite"
  end
end