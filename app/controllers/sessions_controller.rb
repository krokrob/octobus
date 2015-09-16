class SessionsController < ApplicationController
  skip_before_action :authenticate_boss, only: [:create]

  def create
    begin
      @boss = Boss.from_omniauth(request.env['omniauth.auth'])
      session[:boss_id] = @boss.id
      redirect_to root_path, notice: "Welcome, #{@boss.name}!"
    rescue
      redirect_to root_path, alert: "There was an error while trying to authenticate you..."
    end
  end

  def destroy
    if current_boss
      session.delete(:boss_id)
      redirect_to root_path, notice: 'See you!'
    end
  end
end
