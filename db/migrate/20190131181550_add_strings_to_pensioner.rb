class AddStringsToPensioner < ActiveRecord::Migration[5.2]
  def change
    change_column :pensioners, :ajuste_cuota, :string
    change_column :pensioners, :monto_cheque, :string
  end
end
