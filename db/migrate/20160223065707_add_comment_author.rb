class AddCommentAuthor < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.integer :author_id
    end
  end
end
