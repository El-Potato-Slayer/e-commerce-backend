class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        #  :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  # Associations
  has_one :cart
  has_many :orders
  has_many :addresses
  has_many :reviews
         
  # Login validations
  attr_accessor :login

  validate :validate_username

  # def login_user
  #   @login || email || username
  # end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup

    login = conditions.delete(:login)
    where(conditions.to_h).where(
      ['lower(username) = :value OR lower(email) = :value', { value: login.strip.downcase }]
    ).first
  end

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end
end
