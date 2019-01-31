class AddAnexosToPensioners < ActiveRecord::Migration[5.2]
  def change
    add_attachment :pensioners, :anexo1
    add_attachment :pensioners, :anexo2
    add_attachment :pensioners, :anexo3
    add_attachment :pensioners, :anexo4
    add_attachment :pensioners, :anexo5
    add_attachment :pensioners, :anexo6
    add_attachment :pensioners, :anexo7
    add_attachment :pensioners, :anexo8
    add_attachment :pensioners, :anexo9
    add_attachment :pensioners, :anexo10
    add_attachment :pensioners, :anexo11
    add_attachment :pensioners, :anexo12

  end
end
