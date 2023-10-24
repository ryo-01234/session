class User < ApplicationRecord
  has_secure_password
  has_many :notes

  attr_accessor :current_password

  validates :login_id, presence: true,
  format: { with: /\A[A-Za-z0-9!-~]*\z/, allow_blank: true },
  uniqueness: { case_sensitive: false }

  validates :password, presence:true,
  format: { with: /\A[A-Za-z0-9!-~]*\z/, allow_blank: true },
  length: {minimum: 4},
  if: :current_password

  validates :name, presence: true,
  uniqueness: { case_sensitive: false }

  validates :pref, presence: true
  validates :date, presence: true




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
