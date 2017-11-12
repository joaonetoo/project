class AddTituloToQuestionario < ActiveRecord::Migration
  def change
    add_column :questionarios, :titulo, :string
  end
end
