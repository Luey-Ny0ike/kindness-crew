class AddProviderToVolunteers < ActiveRecord::Migration[5.1]
  def change
    add_column :volunteers, :provider, :string
    add_column :volunteers, :uid, :string
  end
end
