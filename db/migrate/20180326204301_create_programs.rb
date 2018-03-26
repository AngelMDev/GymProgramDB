class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :program_type
      t.string :difficulty
      t.integer :score
      t.integer :author_id
      t.integer :days
    end
  end
end
