class AddUserIdToQwipps < ActiveRecord::Migration[7.0]
  def change
    add_column :qwipps, :user_id, :integer
  end
end
