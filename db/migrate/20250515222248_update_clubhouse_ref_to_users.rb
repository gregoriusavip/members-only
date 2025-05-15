class UpdateClubhouseRefToUsers < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :users, :clubhouses
  end
end
