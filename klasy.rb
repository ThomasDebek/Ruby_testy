# Klasy
puts "KLASY"

class Samochod

  def zapisz_silnik(rodzaj)
    @rodzaj = rodzaj
     "turbo #{@rodzaj}"
  end

  def czytaj_silnik
    @rodzaj
  end

end

fiat = Samochod.new
puts fiat.zapisz_silnik("1,6 disel")

puts fiat.czytaj_silnik
puts fiat.inspect
p fiat    # TEN ZAPIS JEST RÓWNOWAŻNY DO METODY INSPECT
p " "




# Akcesory
puts "AKCESORY -akcesory to tak naprawde metody odpowiedzialne do zapisu i odczytu danych"

# i tutaj juz nie mamy metody zapisz silnik
class Samochod_drugi
  attr_accessor :rodzaj, :paliwo
  def silnik
    "Silnik, typ: #{@rodzaj}, zasilany: #{paliwo}"
  end
end


ford = Samochod_drugi.new
puts ford.rodzaj = "1,6 TFSI"
puts ford.silnik
puts ford.paliwo = "ON"

puts " "
mondzio = Samochod_drugi.new
puts mondzio.rodzaj = "1,8 benzin"
puts mondzio.paliwo = "benzina"
puts mondzio.silnik
puts " "


# Inicjalizacja metod :

# Mówiąc krutko, Ruby w kodzie zawsze przeszukuje - szuka metody initialize i laduje zmienne z tej metody do pamięci

class Samochod_trzeci
  attr_accessor :rodzaj, :paliwo

  def initialize(nadwozie)
    @nadwozie = nadwozie
    @typ  = "osobowy"
  end
  def informacje
    "Nadwozie: #{@nadwozie}, typ: #{@typ}, silnik: #{@rodzaj}, zasilany: #{paliwo}"
  end

end


auto = Samochod_trzeci.new("sedan")
puts auto.rodzaj = "2,2 tdi"
puts auto.paliwo = "disel"
puts auto.informacje
puts " "


# Metody klasy
puts "Metody Klasy"

class Samochod_czwarty
  attr_accessor :rodzaj, :paliwo
  @@licznik = 0

  def initialize(nadwozie)
    @nadwozie = nadwozie
    @typ  = "osobowy"
    @@licznik += 1
  end

  def self.produkcja
    "produkcja = #{@@licznik}"
  end

  def informacje
    "Nadwozie: #{@nadwozie}, typ: #{@typ}, silnik: #{@rodzaj}, zasilany: #{paliwo}"
  end

end


auto = Samochod_czwarty.new("sedan")
puts auto.rodzaj = "2,2 tdi"
puts auto.paliwo = "disel"
puts auto.informacje
puts Samochod_czwarty.produkcja
puts " "


auto = Samochod_czwarty.new("kombi")
puts auto.rodzaj = "2,0 tdi"
puts auto.paliwo = "ropniak"
puts auto.informacje
puts Samochod_czwarty.produkcja
puts " "


# Dziedziczenie
puts "Dziedziczenie"
class Pojazd
  def kola
    @kola = "4 sztuki"
  end
end


class Samochod_piąty < Pojazd
  def silnik
    "silnik: 1,6 TDD"
  end
end

class Motor < Pojazd
  def silnik
    "silnik: 650cm"
  end
  def kola
    @kola = "2 sztuki"
    puts @kola
  end
end

autko = Samochod_piąty.new
puts autko.silnik
puts autko.kola

honda = Motor.new
puts honda.silnik
puts honda.kola





