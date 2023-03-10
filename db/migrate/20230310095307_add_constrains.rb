class AddConstrains < ActiveRecord::Migration[7.0]
  def change
    change_column :properties, :name, :string, null: false
    change_column :properties, :address, :string, null: false
    change_column :properties, :zip_code, :string, null: false
    change_column :properties, :price, :decimal, precision: 10, scale: 2, null: false
    change_column :agents, :name, :string, null: false
    change_column :agents, :email, :string, null: false
    change_column :agents, :phone, :string, null: false
    change_column :agents, :password, :string, null: false
    change_column :users, :name, :string, null: false
    change_column :users, :email, :string, null: false
    change_column :users, :password_digest, :string, null: false
  end
end
