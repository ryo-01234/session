class Tune < ApplicationRecord
  has_many :notes

  class << self
    def search(query)
      rel = order("name")
      if query[:tune_name].present?
        rel = rel.where("name LIKE ? OR alt_name LIKE ?", "%#{query[:tune_name]}%", "%#{query[:tune_name]}%")
      end
      if query[:key].present? && query[:key] != "all"
        rel = rel.joins(:notes).where(key: query[:key])
#       rel = rel.where("key ? INNER JOIN notes ON tunes.id = notes.tune_id", query[:key])
      end
      if query[:rhythm].present? && query[:rhythm] != "all"
        rel = rel.where(rhythm: query[:rhythm])
      end
#     if query[:user_name].present?
#       rel = rel.where("User.name LIKE ? OR alt_name LIKE ?", "%#{query[:tune_name]}%", "%#{query[:tune_name]}%")
#     end
      rel
    end
  end

end
