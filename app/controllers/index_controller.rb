class IndexController < ApplicationController
  def index
  #  @recent = Notes.order(add_date)
  @keys = ["all", "C", "D", "E", "F", "G", "A", "B", "Cm", "Dm", "Em", "Fm", "Gm", "Am", "Bm"]
  @rhythms = ["all", "Jig", "Reel","Polka","Hornpipe", "Slipjig"]
  end
end
