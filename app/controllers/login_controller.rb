class LoginController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @users = User.all
    respond_to do |format|
      format.json { render json: @users }
    end
  end

  def show
  end
end
