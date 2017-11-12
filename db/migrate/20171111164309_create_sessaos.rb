class CreateSessaos < ActiveRecord::Migration
  def change
    create_table :sessaos do |t|
      t.references :questionario, index: true, foreign_key: true
      t.string :sigla
      t.string :descricao

      t.timestamps null: false
    end
  end
end
