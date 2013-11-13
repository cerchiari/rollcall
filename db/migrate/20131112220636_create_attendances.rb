class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :meeting_id
      t.integer :student_id
    end
  end
end
