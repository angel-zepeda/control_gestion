class AddIsaiFieldsToPensioner < ActiveRecord::Migration[5.2]
  def change
    add_column :pensioners, :que_se_liquida, :string
    add_column :pensioners, :fecha_liquidacion, :date
    add_column :pensioners, :autoridad_cumplimiento, :string
    add_column :pensioners, :materia, :string
    add_column :pensioners, :numero_uj, :string
    add_column :pensioners, :fecha_uj, :date
    add_column :pensioners, :numero_sp, :integer
    add_column :pensioners, :fecha_sp, :date
    add_column :pensioners, :fecha_sentencia, :date
    add_column :pensioners, :liquidador, :string
    add_column :pensioners, :integrador, :string
    add_column :pensioners, :estado_final, :string
  end
end
