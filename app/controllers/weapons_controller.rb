class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
    render :index
  end
  def show
    @weapon = Weapon.find_by(id: params[:id])
    render :show
  end
end
