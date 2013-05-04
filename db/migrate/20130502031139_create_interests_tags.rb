class CreateInterestsTags < ActiveRecord::Migration
  def change
    create_table :interests_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
