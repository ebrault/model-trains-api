class CreateLocomotives < ActiveRecord::Migration[5.2]
  def change
    create_table :locomotives do |t|
      t.string :builder
      t.integer :year

      t.timestamps
    end
  end
end
