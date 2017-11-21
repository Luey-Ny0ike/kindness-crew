class AddPicturesToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :pictures, :json
  end
end
