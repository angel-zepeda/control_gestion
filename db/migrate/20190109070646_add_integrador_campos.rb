class AddIntegradorCampos < ActiveRecord::Migration[5.2]
  def change
    add_column :pensioners, :numero_correspondencia, :string 
    add_column :pensioners, :numero_pension, :integer                                                         
    add_column :pensioners, :sala, :string                                                                    
    add_column :pensioners, :tipo_expediente, :string                                 
    add_column :pensioners, :numero_expediente, :string                                                       
    add_column :pensioners, :estado_expediente, :string                                                       
    add_column :pensioners, :observaciones, :text                                                             
    add_column :pensioners, :letra, :string                                                                   
    add_column :pensioners, :termino, :date                                                                   
    add_column :pensioners, :envio_juridico, :date                                                            
    add_column :pensioners, :monto_cheque, :float                                                             
    add_column :pensioners, :ajuste_cuota, :float    
    add_column :pensioners, :estatus_expediente, :string 
    add_column :pensioners, :clasificacion, :string
  end
end
