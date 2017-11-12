class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :admin
      t.string :nome

      t.timestamps null: false
    end
  end
end
