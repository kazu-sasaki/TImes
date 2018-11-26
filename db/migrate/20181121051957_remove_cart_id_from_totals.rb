class RemoveCartIdFromTotals < ActiveRecord::Migration[5.2]
  def change
    remove_column :totals, :cart_id, :string
    remove_column :totals, :buy_id, :string
    add_column :totals, :user_id, :string
  end
end