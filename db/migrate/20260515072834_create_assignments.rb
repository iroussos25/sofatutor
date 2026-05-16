class CreateAssignments < ActiveRecord::Migration[8.1]
  def change
    create_table :assignments do |t|
      t.string :visitor_token
      t.string :variant

      t.timestamps
    end
  end
end
