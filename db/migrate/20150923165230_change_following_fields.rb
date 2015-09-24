class ChangeFollowingFields < ActiveRecord::Migration
  def change
    rename_column :followers, :following_id, :idol_id
  end
end
