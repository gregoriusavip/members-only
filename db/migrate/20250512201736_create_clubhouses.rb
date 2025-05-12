class CreateClubhouses < ActiveRecord::Migration[8.0]
  def change
    create_table :clubhouses do |t|
      t.string :club_name, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
