class Articulo < ActiveRecord::Base
  belongs_to :autor
  has_many :comentarios
  validates :titulo, presence: {:message => "no puede estar vacío"}
  validates :contenido, presence: {:message => "es demasiado corto, debe de tener mínimo de 50 carácteres"}, length: {minimum: 50}
end

