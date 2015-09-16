class PagesController < ApplicationController
  skip_before_action :authenticate_boss
  def home
  end
end
