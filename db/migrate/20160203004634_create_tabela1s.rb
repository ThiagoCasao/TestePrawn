class CreateTabela1s < ActiveRecord::Migration
  def change
    create_table :tabela1s do |t|
      t.string :campo1
      t.integer :campo2

      t.timestamps null: false
    end
  end
end
