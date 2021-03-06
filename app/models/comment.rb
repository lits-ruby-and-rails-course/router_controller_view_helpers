# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  acts_as_likable
  belongs_to :post
end
