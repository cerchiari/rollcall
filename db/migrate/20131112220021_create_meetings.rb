class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.date :held_on
      t.integer :course_id
    end
  end
end
