class PagesController < ApplicationController
  protect_from_forgery with: :exception

  def index
    redirect_to users_dashboard_path if current_user
  end

end

