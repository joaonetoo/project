class AddResultadoToMarco < ActiveRecord::Migration
  def change
    add_reference :marcos, :resultado, index: true, foreign_key: true
  end
end
