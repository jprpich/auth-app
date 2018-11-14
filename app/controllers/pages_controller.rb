class PagesController < ApplicationController
  before_action :logged_in_user, only: [:home, :about, :team]

  def home
  end

  def about
  end

  def team
  end

  def logged_in_user
    unless logged_in?
      redirect_to '/'
    end
  end
end
