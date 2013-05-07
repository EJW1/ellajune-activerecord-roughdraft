class CreateLinkTags < ActiveRecord::Migration
  def change
    create_table :link_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
