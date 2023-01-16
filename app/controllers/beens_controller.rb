# frozen_string_literal: true

class BeensController < ApplicationController
  before_action :set_been, only: [:edit, :update, :destroy]

  def index
    @beens = Been.all.includes(:user)
  end

  def show
    @been = Been.find(params[:id])
  end

  def new
    @been = Been.new
  end

  def edit; end

  def update
    if @been.update(been_params)
      redirect_to root_url, success: "コーヒー豆「#{@been.country_name}」を更新しました。"
    else
      render :edit
    end
  end

  def create
    @been = current_user.beens.new(been_params)
    if @been.save
      redirect_to root_url, success: "コーヒー豆「#{@been.country_name}」を登録しました。"
    else
      render :new
    end
  end

  def destroy
    @been.destroy
    redirect_to root_url, success: "コーヒー豆「#{been.country_name}」を削除しました。"
  end

  private

  def been_params
    params.require(:been).permit(:country_name, :farm_name, :description)
  end

  def set_been
    @been = current_user.beens.find(params[:id])
  end
end
