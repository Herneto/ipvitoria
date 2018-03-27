class CreateSermaos < ActiveRecord::Migration[5.1]
  def change
    create_table :sermaos do |t|
      t.string :titulo
      t.string :pregador
      t.string :local
      t.text :descricao

      t.timestamps
    end
  end
end
