class ChangeCommenterToIntegerInComments < ActiveRecord::Migration[7.1]
  def change
    change_column :comments, :commenter, :integer
  end
end
