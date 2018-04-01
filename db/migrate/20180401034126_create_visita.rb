class CreateVisita < ActiveRecord::Migration[5.1]
  def change
    create_table :visita do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.text :comentarios

      t.timestamps
    end
  end
end
