class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :program_id
      t.integer :direction, :default=> 0
    end
  end
end
