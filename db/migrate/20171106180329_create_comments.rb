class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :jobs, foreign_key: true
      t.string :message

      t.timestamps
    end
  end
end
