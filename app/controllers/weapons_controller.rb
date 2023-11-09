class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
    render :index, json: @weapons, include: :moves
  end
  def show
    @weapon = Weapon.find_by(id: params[:id])
    render :show
  end
end
