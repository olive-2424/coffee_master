# frozen_string_literal: true

class BeensController < ApplicationController
  def index
    @beens = Been.all
  end

  def show
    @been = Been.find(params[:id])
  end

  def new
    @been = Been.new
  end

  def edit
    @been = Been.find(params[:id])
  end

  def update
    been = been.find(params[:id])
    been.update!(been_params)
    redirect_to root_url, notice: "コーヒー豆「#{been.country_name}」を更新しました。"
  end

  def create
    been = Been.new(been_params)
    been.save!
    redirect_to root_url, notice: "コーヒー豆#{been.country_name}を登録しました。"
  end

  def destroy
    been = Been.find(params[:id])
    been.destroy
    redirect_to root_url, notice: "コーヒー豆「#{been.country_name}」を削除しました。"
  end

  private
  def been_params
    params.require(:been).permit(:country_name, :farm_name, :description)
  end
end
