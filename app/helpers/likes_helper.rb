module LikesHelper
  def count_likes object
    object.likes.count
  end
  def count_likes_for_collection collection
    @counter = 0
    collection.map {|obj| @counter += obj.likes.count}
    return @counter
  end
end
