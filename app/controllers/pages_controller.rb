class PagesController < ApplicationController
  def inicio
    @contents = Content.all 
  end

  def servicios
  end

  def productos
  end

  def aliados
  end

  def clientes
  end

  def contacto
  end

  def consumidor
  end
end
