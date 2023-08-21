class Note < ApplicationRecord
  belongs_to :tune
  belongs_to :user
end
