class AnnouncesController < ApplicationController
  before_action :set_announce, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def index
    current_announces
  end

  def new
    @announces = current_user.announces.build
  end

  def edit; end

  # def show
  #   respond_to do |format|
  #     format.html { redirect_to my_announcements_url }
  #   end
  # end

  def create
    @announces = current_user.announces.build(announce_params)

    respond_to do |format|
      if @announces.save
        format.html { redirect_to my_announcements_path, notice: 'Объявление создано' }
      else
        format.html { render :new }
        format.json { render json: @announces.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @announces.update(announce_params)
        format.html { redirect_to my_announcements_path, notice: 'Объявление обновлено' }
      else
        format.html { render :edit }
        format.json { render json: @announces.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    current_user_user_id = Announce.find_by(user_id: current_user.id)
    current_user.announces.delete(current_user_user_id)
    respond_to do |format|
      format.html { redirect_to my_announcements_url, notice: 'Объявление удалено' }
      format.json { head :no_content }
    end
  end

  private

  def set_announce
    @announces = Announce.find(params[:id])
  end

  def announce_params
    params.require(:announce).permit(:title, :user_id, :price)
  end
end

