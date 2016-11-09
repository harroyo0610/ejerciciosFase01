class Torta
  attr_reader :ingrediente_torta
  def initialize(ingrediente_torta)
    @ingrediente_torta = ingrediente_torta    
  end
  def torta_ingrediente
    @ingrediente_torta.each do |ingrediente|
      p "Esta torta es de #{ingrediente}"
    end
  end
end

torta_1 = Torta.new(["pollo", "jamon", "salchicha", "chorizo"])


torta_1.torta_ingrediente

class Horno
  def initialize(ingrediente)
    @ingrediente = ingrediente
  end
  def tiempo_coccion
    if @ingrediente[0] == "chorizo"
      tiempo = 8
      p "El tiempo de las tortas en el horno sera de #{tiempo} minutos"
    elsif @ingrediente[0] == "pollo"
      tiempo = 7
      p "El tiempo de las tortas en el horno sera de #{tiempo} minutos" 
    elsif @ingrediente[0] == "salchicha"
      tiempo = 6
      p "El tiempo de las tortas en el horno sera de #{tiempo} minutos"
    elsif @ingrediente[0] == "jamon"
      tiempo = 5 
      p "El tiempo de las tortas en el horno sera de #{tiempo} minutos"    
    end
    salieron_tortas(tiempo)
  end

  def salieron_tortas(tiempo)
    @ingrediente.each do |torta|
      if torta == "chorizo"
        if tiempo > 8
          quemado(torta)
        elsif tiempo == 8
          cocido(torta)
        elsif tiempo == 7
          casi_cocido(torta)
        else
          crudo(torta)
        end
      elsif torta == "pollo"
        if tiempo > 7
          quemado(torta)
        elsif tiempo == 7
          cocido(torta)
        elsif tiempo == 6
          casi_cocido(torta)
        else
          crudo(torta)
        end
      elsif torta == "salchicha"
        if tiempo > 6
          quemado(torta)
        elsif tiempo == 6
          cocido(torta)
        elsif tiempo == 5
          casi_cocido(torta)
        else
          crudo(torta)
        end
      elsif torta == "jamon"
        if tiempo > 5
          quemado(torta)
        elsif tiempo == 5
          cocido(torta)
        elsif tiempo == 4
          casi_cocido
        else
          crudo(torta)
        end                 
      end
    end
  end

  def quemado(i_torta)
    p "La torta #{i_torta} salio quemada"
  end
  def cocido(i_torta)
    p "La torta #{i_torta} salio cocida"
  end
  def casi_cocido(i_torta)
    p "La torta #{i_torta} salio casi cocida"
  end
  def crudo(i_torta)
    p "La torta #{i_torta} salio cruda"
  end 
end
horno = Horno.new(torta_1.ingrediente_torta)
horno.tiempo_coccion
