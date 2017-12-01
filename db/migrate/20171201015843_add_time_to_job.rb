class AddTimeToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :time, :time
  end
end
