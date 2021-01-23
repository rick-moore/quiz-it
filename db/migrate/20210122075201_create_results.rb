class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :user_id
      t.integer :quiz_id
      t.integer :score
      t.date :date
    end
  end
end
