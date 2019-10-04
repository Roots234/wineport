# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  admin_id    :integer          not null
#  name        :string           not null
#  description :text             not null
#  price       :integer          not null
#  image       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  has_many :basket_products, dependent: :destroy
  has_many :purchase_record_products, dependent: :destroy
  
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  
  include Hashid::Rails
  
  belongs_to :admin
end
