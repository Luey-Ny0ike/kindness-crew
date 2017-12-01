class AddDateToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :date, :date
  end
end
