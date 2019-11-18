FactoryBot.define do
  factory :user do
    email 'tester@example.com'
    password 'dottle-nouveau-pavilion-tights-furze'
    confirmed_at Time.zone.now
  end
end
