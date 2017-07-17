class ChangeOvertimeRequestToIntegerInPosts < ActiveRecord::Migration[5.0]
  def change
  	change_column :posts, :overtime_request, :float
  end
end
