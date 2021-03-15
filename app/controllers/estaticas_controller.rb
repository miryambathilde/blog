class EstaticasController < ApplicationController
  def contacto
    @id = params[:id]
    @pag = params[:pagina]
  end

  def nosotros
    @mensaje = "Bienvenidos a tod@s de nuevo a mi blog!"
    @usuarios = ['Miryam', 'Sergio', 'Oliver', "Luca"]
  end

end

