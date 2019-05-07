class Api::V1::TrumpetsController < ApplicationController
  before_action :find_trumpet, only: [:show, :update, :destroy]

  def index
    @trumpets = Trumpet.all
    render json: @trumpets
  end

  def show
    render json: @trumpet
  end

  def create
    @website = Website.find_or_create_by(url: trumpet_params[:url], root_url: trumpet_params[:root_url])
    @trumpet = Trumpet.create!(user_id: trumpet_params[:user_id], website_id: @website.id, summary: trumpet_params[:summary], trumpet_type: trumpet_params[:trumpet_type], content: trumpet_params[:content], img_url: trumpet_params[:img_url])
    json_response(@trumpet, :created)
  end

  def update
    @website = Website.find_or_create_by(url: trumpet_params[:url], root_url: trumpet_params[:root_url])
    @trumpet.update(user_id: trumpet_params[:user_id], website_id: @website.id, summary: trumpet_params[:summary], trumpet_type: trumpet_params[:trumpet_type], content: trumpet_params[:content])
    head :no_content
    json_response(@trumpet, :created)
  end

  def destroy
    @trumpet.destroy
  end

  private

  def trumpet_params
    params.permit(:user_id, :url, :root_url, :summary, :trumpet_type, :content, :img_url)
  end

  def find_trumpet
    @trumpet = Trumpet.find(params[:id])
  end

end
