class AddUniqueIndexToConversionsOnAssignmentId < ActiveRecord::Migration[8.1]
  def change
    remove_index :conversions, :assignment_id
    add_index :conversions, :assignment_id, unique: true
  end
end