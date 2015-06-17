
module Likable
  def self.included klass
    klass.has_many :likes, as: :likable
  end

  def add_like!
    likes.create
  end
end
