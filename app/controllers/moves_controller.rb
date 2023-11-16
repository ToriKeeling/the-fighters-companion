class MovesController < ApplicationController
  def index
    @moves = Move.all
    render :index
  end
end
