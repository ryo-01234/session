class IndexController < ApplicationController
  def index
  @recents = Note.order(add_date: :desc).limit(5)
  end
  def about
  end
end
