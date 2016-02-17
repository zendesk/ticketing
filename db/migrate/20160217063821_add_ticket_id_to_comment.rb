class AddTicketIdToComment < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.integer :ticket_id, null: false
    end
  end
end
