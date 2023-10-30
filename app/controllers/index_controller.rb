class IndexController < ApplicationController
  def index
  @recents = Note.where(status: "public").order(updated_at: :desc).limit(5)
  end
  def about
  end
end
