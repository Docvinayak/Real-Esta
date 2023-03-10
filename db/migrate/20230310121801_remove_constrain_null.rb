class RemoveConstrainNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :agents, :name, :string, true
    change_column_null :agents, :phone, :string, true
    change_column_null :agents, :password, :string, true
  end
end
