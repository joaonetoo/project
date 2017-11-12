class CreateJoinTableResultadoMarco < ActiveRecord::Migration
  def change
    create_join_table :resultados, :marcos
  end
end
