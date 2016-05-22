class CreateMarkSheets < ActiveRecord::Migration
  def change
    create_table :mark_sheets do |t|
      t.string :name
      t.string :subject_name
      t.float :total_number
      t.integer :student_id

      t.timestamps
    end
  end
end
