class Tune < ApplicationRecord
  has_many :notes

  class << self
    def search(query)
      rel = Tune.order("name")
      if query[:tune_name].present?
        t_word = query[:tune_name].split(/[[:blank:]]+/)
        t_word.each { |word|
        rel = rel.where("REPLACE(REPLACE(name,' ',''),' ', '') LIKE ? OR REPLACE(REPLACE(alt_name,' ',''),' ', '') LIKE ?", "%#{word}%", "%#{word}%")
      }
        rel = rel.distinct
      end
      if query[:key].present? && query[:key] != "all"
        rel = rel.joins(:notes).merge(Note.where(key: query[:key])).distinct
      end
      if query[:scale].present? && query[:scale] != "all"
        rel = rel.joins(:notes).merge(Note.where(scale: query[:scale])).distinct
      end
      if query[:rhythm].present? && query[:rhythm] != "all"
        rel = rel.where(rhythm: query[:rhythm])
      end
      if query[:user_name].present?
        u_word = query[:user_name].split(/[[:blank:]]+/)
        u_word.each { |word|
        s_user = User.where("REPLACE(REPLACE(name,' ',''),' ', '') LIKE ?", "%#{word}%")
        rel = rel.joins(:notes).merge(Note.where(user_id: s_user))
        }
        rel = rel.distinct
      end
    rel
    end
  end
end