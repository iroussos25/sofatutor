class AddIndexToAssignmentsOnVisitorToken < ActiveRecord::Migration[8.1]
  def change
    add_index :assignments, :visitor_token, unique: true
  end
end
