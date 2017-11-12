class CreateTopicos < ActiveRecord::Migration
  def change
    create_table :topicos do |t|
      t.references :sessao, index: true, foreign_key: true
      t.string :sigla
      t.string :descricao

      t.timestamps null: false
    end
  end
end
