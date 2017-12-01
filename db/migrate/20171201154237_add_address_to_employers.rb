class AddAddressToEmployers < ActiveRecord::Migration[5.1]
  def change
    add_column :employers, :address, :string
    add_column :employers, :latitude, :float
    add_column :employers, :longitude, :float
  end
end
