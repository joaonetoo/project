class CreateResultados < ActiveRecord::Migration
  def change
    create_table :resultados do |t|
      t.references :questionario, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
