class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.datetime :read_at

      t.timestamps
    end
  end
end
