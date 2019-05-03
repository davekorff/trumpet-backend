class Api::V1::ReactionsController < ApplicationController
  before_action :find_reaction, only: [:destroy]

  def index
  end

  def create
    @reaction = Reaction.create!(reaction_params)
    json_response(@reaction, :created)
  end

  def destroy
    @reaction.destroy
  end

  private

  def reaction_params
    params.permit(:user_id, :trumpet_id, :reaction_type)
  end

  def find_reaction
    @reaction = Reaction.find(params[:id])
  end

end
