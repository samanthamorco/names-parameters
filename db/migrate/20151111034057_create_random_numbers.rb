class CreateRandomNumbers < ActiveRecord::Migration
  def change
    create_table :random_numbers do |t|
      t.integer :number

      t.timestamps null: false
    end
  end
end
