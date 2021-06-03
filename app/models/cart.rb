class Cart < ApplicationRecord
  belongs_to :user
  has_many :products, class_name: 'CartProduct'

  def create_order() 
    order = Order.create(user_id: user.id, has_shipped: false)

    products.map do |cart_product|
      OrderProduct.create(order_id: order.id, product_id: cart_product.product.id, quantity: cart_product.quantity)
    end

    CartProduct.where(cart_id: id).destroy_all
  end
end
