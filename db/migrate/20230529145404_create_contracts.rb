class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.references :renter, null: false, foreign_key: { to_table: :users }
      t.references :team, null: false, foreign_key: true
      t.date :begin_date
      t.date :end_date
      t.string :status
      t.integer :total_price

      t.timestamps
    end
  end
end
