FactoryBot.define do
  factory :product do
    id 1
    name 'sample-item1'
    description 'dottle-nouveau-pavilion-tights-furze'
    image Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/noimage.jpg'))
    price 101_010
    created_at Time.zone.now
    association :admin
  end
end
