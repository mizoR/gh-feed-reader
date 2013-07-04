class WelcomeController < ApplicationController
  def index
    @entries = Entry.includes(:author).all
  end
end
