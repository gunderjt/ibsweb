FactoryGirl.define do
  factory :website_type do
    web_type ["Home","Work","CV"].sample
    rank { rand(1..6) }
  end
end