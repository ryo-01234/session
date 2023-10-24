class Note < ApplicationRecord
  belongs_to :tune
  belongs_to :user

  validates :key, presence: true
  validates :scale, presence: true
  validates :abc, presence: true
end
