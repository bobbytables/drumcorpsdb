class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :owner_email
      t.string :name
      t.text :usage

      t.timestamps null: false
    end
  end
end
