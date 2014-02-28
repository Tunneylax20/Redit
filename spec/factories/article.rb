FactoryGirl.define do
  factory :article do
      url { "http://#{Faker::Internet.domain_name}" }
      title { Faker::Lorem.sentence(word_count = 3)}
      association :user
  end
end