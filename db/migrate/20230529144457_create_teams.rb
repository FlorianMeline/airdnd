class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.string :name
      t.text :description
      t.integer :price_per_day
      t.integer :success_rate
      t.string :dungeon_type

      t.timestamps
    end
  end
end
