FactoryBot.define do
  factory :user do
    email "tester@example.com"
    password "dottle-nouveau-pavilion-tights-furze"
    confirmed_at Time.now()
  end
  
  factory :admin do
    email "tester@example.com"
    password "dottle-nouveau-pavilion-tights-furze"
  end
end
