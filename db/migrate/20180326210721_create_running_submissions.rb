class CreateRunningSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :running_submissions do |t|
      t.integer :running_program_id
      t.integer :author_id
      t.string :date
    end
  end
end
