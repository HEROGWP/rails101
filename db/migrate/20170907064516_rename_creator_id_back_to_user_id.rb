class RenameCreatorIdBackToUserId < ActiveRecord::Migration[5.1]
  def change
    rename_column :groups, :creator_id, :user_id
  end
end
