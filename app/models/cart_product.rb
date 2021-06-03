class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :oproduct
end
