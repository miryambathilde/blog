class ArticulosController < ApplicationController
  
  def index
    @articulos=Articulo.all.order("created_at DESC")
  end
  
  def new
    @articulo = Articulo.new
  end

  def create
    @articulo = Articulo.new (articulo_params)
    if @articulo.save
      redirect_to @articulo
    else
      render 'new'
    end
  end

  def edit
    @articulo=Articulo.find(params[:id])
  end

  def update
    @articulo=Articulo.find(params[:id])
    if @articulo.update.find(articulo_params)
      flash[:notice] = "El artículo se ha modificado correctamente"
      redict_to @articulo
    else
      render 'edit'
    end
  end

  def show
    @articulo=Articulo.find(params[:id])
  end

  def destroy
    @articulo=Articulo.find(params[:id])
    @articulo.destroy
    redirect_to articulos_path, :notice=>"Artículo eliminado correctamente"
  end

    private
  def articulo_params
    params.require(:articulo).permit(:titulo, :contenido)
  end 
end
