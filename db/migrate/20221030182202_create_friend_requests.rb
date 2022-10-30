class CreateFriendRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_requests do |t|
      t.integer :sender
      t.integer :recipient

      t.timestamps
    end
  end
end
