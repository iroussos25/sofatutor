class CreateConversions < ActiveRecord::Migration[8.1]
  def change
    create_table :conversions do |t|
      t.references :assignment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
