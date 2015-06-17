class LikesController < ApplicationController
  before_action :get_parrent

  # POST /likes
  # POST /likes.json
  def create
    @parrent.add_like!
    redirect_to :back
  end

  private

    def get_parrent
      @parrent = nil
    end
end
