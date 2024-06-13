class RenameCommenterToUserIdInComments < ActiveRecord::Migration[7.1]
  def change
    rename_column :comments, :commenter, :user_id
  end
end
