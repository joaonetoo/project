class CreateMarcos < ActiveRecord::Migration
  def change
    create_table :marcos do |t|
      t.references :topico, index: true, foreign_key: true
      t.string :sigla
      t.string :descricao

      t.timestamps null: false
    end
  end
end
