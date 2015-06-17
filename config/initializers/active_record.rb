class ActiveRecord::Base
  def self.acts_as_likable
    has_many :likes, as: :likable
    define_method(:add_like!) do
      likes.create
    end
  end
end
