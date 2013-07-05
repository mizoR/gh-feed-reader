class Authors::ActivitiesController < ApplicationController
  before_action :set_author, only: [:show]

  def show
    @entries = @author.entries
  end

  private

  def set_author
    @author = Author.find_by_uid! params[:uid]
  end
end
