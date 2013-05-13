class AddColumnsToMessages < ActiveRecord::Migration
  def change
    change_table :messages do |t|
      t.string :sender_id
      t.string :recepient_id
      t.boolean :sender_deleted, :recepient_deleted
      t.string :container, :default => "draft"
    end
  end
end
