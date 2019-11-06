FactoryBot.define do
  factory :product do
    name "sample-item1"
    description "dottle-nouveau-pavilion-tights-furze"
    image Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/noimage.jpg'))
    price 101010
    admin_id "1"
  end
end
