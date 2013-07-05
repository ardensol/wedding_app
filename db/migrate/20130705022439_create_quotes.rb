class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :quote_type
      t.string :wedding_style
      t.string :budget
      t.string :comments
      t.date :event_date
      t.time :event_time
      t.integer :zip_code
      t.string :solicitation_type

      t.timestamps
    end
  end
end
