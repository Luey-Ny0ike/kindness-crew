class AddLocationToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :address, :string
    add_column :jobs, :latitude, :float
    add_column :jobs, :longitude, :float
  end
end
