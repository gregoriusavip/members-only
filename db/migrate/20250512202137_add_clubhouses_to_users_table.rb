class AddClubhousesToUsersTable < ActiveRecord::Migration[8.0]
  def change
    add_reference :users, :clubhouse
  end
end
