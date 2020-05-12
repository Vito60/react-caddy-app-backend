class CreateProClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :pro_clubs do |t|
      t.belongs_to :pro, null: false, foreign_key: true
      t.belongs_to :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
