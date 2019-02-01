class ChangeNumeroOficioToString < ActiveRecord::Migration[5.2]
  def change
      change_column :pensioners, :numero_oficio, :string
  end
end
