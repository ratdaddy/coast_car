class UpdateUserProfile < ActiveRecord::Migration
  def change
    rename_column :users,
    :rider_restriction_allow_kids, :rider_restriction_allow_children
  end
end
