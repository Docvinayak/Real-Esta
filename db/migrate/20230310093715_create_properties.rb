class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.float :price
      t.references :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
