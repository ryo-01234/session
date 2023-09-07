class TunesController < ApplicationController

  private def tune_params
    attrs = [
      :name,
      :rhythm,
      :memo
    ]
    params.require(:tune).permit(attrs)
  end

  def index
    if params[:tune_name].blank? && params[:user_name].blank? && params[:key] == "all" && params[:scale] == "all" && params[:rhythm] == "all"
      @tunes = Tune.order("name")
    else
      @tunes = Tune.search(params)
    end
  end

  def show
    @tune = Tune.find(params[:id])
    @note = @tune.notes.where(status: "public")
  end

  def new
    @tune = Tune.new
  end

  def edit
    @tune = Tune.find(params[:id])
  end

  def create
    @tune = Tune.new(tune_params)
    if @tune.save
      redirect_to @tune, notice: "楽曲登録が完了しました"
    else
      render "new"
    end
  end

  def update
    @tune = Tune.find(params[:id])
    @tune.assign_attributes(tune_params)
    if @tune.save
      redirect_to @tune, notice: "楽曲情報を更新しました"
    else
      render "edit"
    end
  end

  def destroy
    @tune = find{params[:id]}
    @tune.destroy
    redirect_to :root, status: :see_other, alert: "楽曲情報を削除しました"
  end

end