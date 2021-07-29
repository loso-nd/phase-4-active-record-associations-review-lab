class CreateTaxis < ActiveRecord::Migration[6.1]
  def change
    create_table :taxis do |t|
      t.integer :cab_number
      t.string :color
      t.timestamps
    end
  end
end
