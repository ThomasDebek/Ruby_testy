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


# Inicjalizacja metod






