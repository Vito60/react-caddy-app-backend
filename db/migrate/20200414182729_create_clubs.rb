class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :club_type
      t.string :brand
      t.string :model
      t.string :loft

      t.timestamps
    end
  end
end
