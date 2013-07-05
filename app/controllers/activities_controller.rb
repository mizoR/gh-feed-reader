class ActivitiesController < ApplicationController
  before_action :set_rss, only: [:show, :edit, :update, :destroy]
  def show
    @entries = @rss.entries
  end

  private
  def set_rss
    @rss = Rss.find_by_uid!(params[:uid])
  end
end
