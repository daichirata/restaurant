class CreateOsinagakis < ActiveRecord::Migration
  def change
    create_table :osinagakis do |t|
      t.string :menu
      t.integer :price

      t.timestamps
    end
  end
end
