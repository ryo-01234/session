class User < ApplicationRecord
  has_secure_password
  has_many :notes






#ここからRemember me実装のためのメソッド

  attr_accessor :remember_token

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def self.digest(str)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(str, cost: cost)
  end

  def remember_me
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def forget_me
    update_attribute(:remember_digest, nil)
  end

#ここまでRemember me実装のためのメソッド

end
