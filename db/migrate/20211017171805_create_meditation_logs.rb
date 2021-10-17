class CreateMeditationLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :meditation_logs do |t|
      t.integer :user_id
      t.string :name 
      t.string :description
      t.integer :duration
      t.timestamps
    end
  end
end
