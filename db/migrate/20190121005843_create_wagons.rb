class CreateWagons < ActiveRecord::Migration[5.2]
  def change
    create_table :wagons do |t|
      t.string :builder
      t.integer :year

      t.timestamps
    end
  end
end
