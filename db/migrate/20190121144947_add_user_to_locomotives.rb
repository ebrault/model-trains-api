class AddUserToLocomotives < ActiveRecord::Migration[5.2]
  def change
    add_reference :locomotives, :user, foreign_key: true
  end
end
