class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :period
      t.string :title
      t.date :morning

      t.timestamps null: false
    end
  end
end
