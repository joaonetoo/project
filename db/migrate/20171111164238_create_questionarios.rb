class CreateQuestionarios < ActiveRecord::Migration
  def change
    create_table :questionarios do |t|

      t.timestamps null: false
    end
  end
end
