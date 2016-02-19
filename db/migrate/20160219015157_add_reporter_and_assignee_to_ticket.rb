class AddReporterAndAssigneeToTicket < ActiveRecord::Migration
  def change
    change_table :tickets do |t|
      t.integer :assignee_id
      t.integer :reporter_id
    end 
  end
end
