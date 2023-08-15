class IndexController < ApplicationController
  def index
    @recent = Notes.order(add_date)
  end
end
