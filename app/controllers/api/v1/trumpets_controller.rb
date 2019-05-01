class Api::V1::TrumpetsController < ApplicationController
  # before_action :find_alert, only: [:update]

  def index
    @trumpets = Trumpet.all
    render json: @trumpets
  end

  # def update
  #   @alert.update(alert_params)
  #   if @alert.save
  #     render json: @alert, status: :accepted
  #   else
  #     render json: { errors: @alert.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  private

  # def alert_params
  #   params.permit(:type, :content)
  # end
  #
  # def find_alert
  #   @alert = Alert.find(params[:id])
  # end

end
