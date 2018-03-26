class CreateRunningPrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :running_programs do |t|
      t.string :name
      t.string :difficulty
      t.integer :score
      t.integer :author_id
    end
  end
end
