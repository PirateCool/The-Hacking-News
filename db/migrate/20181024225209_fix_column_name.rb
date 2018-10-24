class FixColumnName < ActiveRecord::Migration[5.2]
  def change

  	rename_column :replies, :comments_id, :comment_id

  end
end
