class CreateTurfDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :turf_details do |t|
      t.string :name
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
