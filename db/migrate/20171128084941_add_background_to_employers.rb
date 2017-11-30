class AddBackgroundToEmployers < ActiveRecord::Migration[5.1]
  def change
    add_column :employers, :background, :string
  end
end
