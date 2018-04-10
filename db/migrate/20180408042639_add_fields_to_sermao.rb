class AddFieldsToSermao < ActiveRecord::Migration[5.1]
  def change
    add_column :sermaos, :pregado_em, :datetime
  end
end
