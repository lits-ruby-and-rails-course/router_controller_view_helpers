# == Schema Information
#
# Table name: likes
#
#  id           :integer          not null, primary key
#  likable_id   :integer          not null
#  likable_type :string           not null
#

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
