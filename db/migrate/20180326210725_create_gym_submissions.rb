class CreateGymSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :gym_submissions do |t|
      t.integer :gym_program_id
      t.integer :author_id
      t.string :date
    end
  end
end
