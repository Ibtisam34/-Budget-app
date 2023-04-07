FactoryBot.define do
  factory :payment do
    amount { 100 }
    description { "Payment for something" }
  end
end