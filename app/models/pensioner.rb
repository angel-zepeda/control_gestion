class Pensioner < ApplicationRecord
  has_attached_file :anexo1
  validates_attachment :anexo1, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  has_attached_file :anexo2
  validates_attachment :anexo2, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  has_attached_file :anexo3
  validates_attachment :anexo3, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  has_attached_file :anexo4
  validates_attachment :anexo4, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  has_attached_file :anexo5
  validates_attachment :anexo5, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  has_attached_file :anexo6
  validates_attachment :anexo6, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  has_attached_file :anexo7
  validates_attachment :anexo7, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  has_attached_file :anexo8
  validates_attachment :anexo8, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  has_attached_file :anexo9
  validates_attachment :anexo9, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  has_attached_file :anexo10
  validates_attachment :anexo1, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  has_attached_file :anexo11
  validates_attachment :anexo1, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  has_attached_file :anexo12
  validates_attachment :anexo1, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

  validates :turno,:numero_correspondencia, :numero_oficio,:fecha_oficio, :fecha_recepcion,
    :promovente, :numero_juicio, :fecha_oficio, :turnado, :fecha_oficio, :anexo1, presence: true

  validates :numero_juicio, :numero_oficio, uniqueness: true
  validates :numero_pension, :numero_expediente, uniqueness: true

  validates :numero_pension, :sala, :tipo_expediente, :numero_expediente, :estado_expediente, :letra, :termino,
   :envio_juridico, :monto_cheque, :ajuste_cuota, :clasificacion, presence: true




end
