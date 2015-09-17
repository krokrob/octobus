class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_boss

  private

  def current_boss
    @current_boss ||= Boss.find_by(id: session[:boss_id])
  end

  helper_method :current_boss

  def authenticate_boss
    unless current_boss
      redirect_to root_path, alert: 'You must be logged to access this page'
    end
  end
end
