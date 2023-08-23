class TunesController < ApplicationController
  def index
    if params[:tune_name].blank? && params[:user_name].blank? && params[:key] == "all" && params[:rhythm] == "all"
      @tunes = Tune.order("name")
    else
      @tunes = Tune.search(params)
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

end