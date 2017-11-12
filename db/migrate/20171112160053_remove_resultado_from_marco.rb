class RemoveResultadoFromMarco < ActiveRecord::Migration
  def change
    remove_reference :marcos, :resultado, index: true, foreign_key: true
  end
end
