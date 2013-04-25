class AddBirthDateToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :birth_date, :date
  end
end
