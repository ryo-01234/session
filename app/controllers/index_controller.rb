class IndexController < ApplicationController
  def index
  @recents = Note.order(add_date: :desc).limit(5)
  @keys = ["all"].concat(Note.pluck(:key).uniq)
  @scales = ["all"].concat(Note.pluck(:scale).uniq)
  @rhythms = ["all"].concat(Tune.pluck(:rhythm).uniq)
  end
end
