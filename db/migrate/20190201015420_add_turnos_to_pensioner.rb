class AddTurnosToPensioner < ActiveRecord::Migration[5.2]
  def change
    add_attachment :pensioners, :anexo13
    add_attachment :pensioners, :anexo14
    add_attachment :pensioners, :anexo15
    add_attachment :pensioners, :anexo16
    add_attachment :pensioners, :anexo17
    add_attachment :pensioners, :anexo18
  end
end
