class IndexController < ApplicationController
  def index
  #  @recent = Notes.order(add_date)
  @keys = ["C", "D", "E", "F", "G", "A", "B", "Cm", "Dm", "Em", "Fm", "Gm", "Am", "Bm"]
  @rhythms = ["Jig", "Reel"]
  end
end
