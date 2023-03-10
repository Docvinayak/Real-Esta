class RemoveAgentNull < ActiveRecord::Migration[7.0]
  def change
    change_column :agents, :name, :string, true
    change_column :agents, :phone, :string, true
    change_column :agents, :password, :string, true
  end
end
