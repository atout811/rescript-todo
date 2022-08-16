class DeleteCol < ActiveRecord::Migration[7.0]
  def change
    remove_column :todos, :user_id
    remove_column :todos, :description
  end
end
