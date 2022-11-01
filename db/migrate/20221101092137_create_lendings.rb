class CreateLendings < ActiveRecord::Migration[7.0]
  def change
    create_table :lendings do |t|
      t.references :lending_user, null: false, foreign_key: { to_table: :users }
      t.references :borrowed_equipment, null: false, foreign_key: { to_table: :equipments }

      t.timestamps
    end
  end
end
