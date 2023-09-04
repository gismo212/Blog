FactoryBot.define do
  factory :article do
    author "Hores"
    sequence(:body) {|n| "comment body #{n}" } 
  end
end