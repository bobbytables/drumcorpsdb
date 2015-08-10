class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer :year

      t.timestamps null: false
    end
  end
end
