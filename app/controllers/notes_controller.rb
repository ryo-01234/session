class NotesController < ApplicationController



  private def note_params
    attrs = [
      :tune_id,
      :user_id,
      :status,
      :key,
      :scale,
      :abc,
      :memo
    ]
    params.require(:note).permit(attrs)
  end

  def index
  end

  def show
  end

  def new
    @note = Note.new
    @tune = Tune.find(params[:tune_id])
    @tune_id = @tune.id
  end

  def edit
    @note = Note.find(params[:id])
    @ref = params[:ref]
    @tune_id = @note.tune.id
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to tune_path(@note.tune.id), notice: "ABC譜の登録が完了しました"
    else
      render "new"
    end
  end

  def update
    @ref = params[:ref]
    @note = Note.find(params[:id])
    @note.assign_attributes(note_params)
    if @note.save
      if @ref.present?
        redirect_to user_path(params[:note][:user_id]), notice: "#{@note.tune.name}のABC譜を更新しました"
      else
        redirect_to tune_path(@note.tune.id), notice: "ABC譜を更新しました"
      end
    else
      render "edit"
    end
  end

  def destroy
    @note = find(params[:id])
    t_id = @note.tune.id
    @note.destroy
    redirect_to show_tune_path(t_id), status: :see_other, alert: "ABC譜を削除しました"
  end
end