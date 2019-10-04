# == Schema Information
#
# Table name: baskets
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Basket < ApplicationRecord
  #basketは複数のbasket_products（中間レコード）を持っている。:destroy basket_productsが0になると、basketも自動的に削除される
  has_many :basket_products, dependent: :destroy
  #basketは複数のproductsを持っている。through:basketから直接productsを呼べる
  has_many :products, through: :basket_products
  
  
end
