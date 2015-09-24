class Follower < ActiveRecord::Base

belongs_to :follower, :class_name => 'User', :foreign_key => "follower_id"
belongs_to :idol, :class_name => 'User', :foreign_key => "idol_id"
end
