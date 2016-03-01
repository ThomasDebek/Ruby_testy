# Moduły wbudowane
puts "Moduly wbudowane"



#MOZEMY TO ZROBIC TAK
# Moduly są w odrębnych plikach

include Math  # Tu nam ładuje do pamięci moduł
puts sqrt(4)  # i liczy nam pierwiastek z 4

# LUB TAK
puts Math.sqrt(9)









# Moduły wlasne
puts "Moduly wlasane"
puts " "
puts "Przyklad bez modulu"
# Tu mamy zwykle klasy bez modulu


class Gielda
  attr_accessor :marka, :model, :rocznik
  def ogloszenie
    return "Sprzedam: #{@marka} #{@model} #{@rocznik } \n"
  end
end

class Motor < Gielda
  attr_accessor :typ, :naped

  def rodzaj
    return "Typ motoru: #{@typ}, naped: #{@naped}\n"
  end
  def wyswietl
    puts ogloszenie + rodzaj
  end
end

przedmiot = Motor.new
przedmiot.typ = "turystyczny"
przedmiot.naped = "lancuch"
przedmiot.marka = "BMW"
puts przedmiot.rodzaj
puts przedmiot.ogloszenie


puts " "
puts "Przyklad z modulem"
# A Tutaj zrubmy to z modulem

load "modul_parametry.rb"    # najpierw tworzymy odzileny plik i nadajmey mu nazwe

class Gielda2
  include Parametry    # nastepnie wycinamy wszystko z klasy i wklejamy do naszego pliku a tu dajemy naszą zawartosc
end

class Motor2 < Gielda2
  attr_accessor :typ, :naped

  def rodzaj
    return "Typ motoru: #{@typ}, naped: #{@naped}\n"
  end
  def wyswietl
    puts ogloszenie + rodzaj
  end
end

przedmiot2 = Motor2.new
przedmiot2.typ = "turystyczny"
przedmiot2.naped = "lancuch"
przedmiot2.marka = "BMW"
puts przedmiot2.rodzaj
puts przedmiot2.ogloszenie
