class Api::V1::TrumpetsController < ApplicationController
  before_action :find_trumpet, only: [:show]

  def index
    @trumpets = Trumpet.all
    render json: @trumpets
  end

  def show
    render json: @trumpet
  end

  private

  def find_trumpet
    @trumpet = Trumpet.find(params[:id])
  end

end
