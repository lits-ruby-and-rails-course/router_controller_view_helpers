class LikesController < ApplicationController
  before_action :get_parrent

  # POST /likes
  # POST /likes.json
  def create
    @parrent.add_like!
    redirect_to :back, notice: "Thank you for your like!"
  end

  private

    def get_parrent
      params.each do |name, value|
        if name =~ /(.+)_id$/
          @parrent = $1.classify.constantize.find(value)
        end
      end
      nil
    end
end
