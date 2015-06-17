# == Schema Information
#
# Table name: likes
#
#  id           :integer not null, primary key
#  likable_id   :integer not null
#  likable_type :string  not null
#

class Like < ActiveRecord::Base
  belongs_to :likable, polymorphic: true
end
