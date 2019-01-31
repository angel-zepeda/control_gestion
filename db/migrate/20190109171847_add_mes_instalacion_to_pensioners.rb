class AddMesInstalacionToPensioners < ActiveRecord::Migration[5.2]
  def change
    add_column :pensioners, :mes_instalacion, :date
  end
end
