class Tune < ApplicationRecord
  has_many :notes

  class << self
    def search(query)
      rel = order("name")
      if query[:tune_name].present?
        rel = rel.where("name LIKE ? OR alt_name LIKE ?", "%#{query[:tune_name]}%", "%#{query[:tune_name]}%")
      end
      if query[:key] != "all"
        rel = rel.joins(:notes).merge(Note.where(key: query[:key])).distinct
      end
      if query[:scale] != "all"
        rel = rel.joins(:notes).merge(Note.where(scale: query[:scale])).distinct
      end
      if query[:rhythm] != "all"
        rel = rel.where(rhythm: query[:rhythm])
      end
      if query[:user_name].present?
        s_user = User.where("name LIKE ?", "%#{query[:user_name]}%").pluck
        rel = rel.joins(:notes).merge(Note.where(user_id: s_user))
      end
    rel
    end
  end
end