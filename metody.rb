

puts "Metody"
# Metody
class Metody
  puts "adam".upcase

  def powitanie
    osoba = "Adam"
    napis = "Witaj w kursie Ruby! "
    puts napis #{osoba}
  end

end

 me = Metody.new
puts 5.times {me.powitanie}




# Zasieg Zmiennych w metodach
puts "Zasieg zmiennych w metodach"

# osoba  - zmienna lokalna
# $osoba - zmienna globalna
# @osoba - zmienna instacji
# @@osoba - zmienna klasowa

$napis = "Ala ma kota"

puts $napis




puts " "
# Argument przkazywany do metody
puts "ARGUMENT PRZEKAZYWANY DO METODY"


class Argumenty
  def test(osoba)
    napis = "Witaj #{osoba} w naszym Projekcie"
    print napis
  end

  def test_2(osoba,lekcja)
    napis = "Witaj #{osoba} w naszym Projekcie, w rozdziale o nr #{lekcja}"
    print napis
  end

  def test_3(osoba ="uczniu", lekcja = 1)   # W tym momęcie jezeli nie podamy drugiego argumentu - to domyślnie lekcja nr jeden będzie
    napis = "Wiatojcie #{osoba} w innym projekcie #{lekcja} "
    puts napis
  end

end

ar = Argumenty.new
puts ar.test("Alan")
puts ar.test("Pikaczu")
puts ar.test_2("Zenek", "3")
puts ar.test_3("Mikolaj")
puts ar.test_3    # Tu bez argumentów podajmy
puts " "




# Return
puts "Retun - ZWRACANIE WARTOSCI"
class Return
  def test(osoba="uczniu", lekcja=1)
    napis = "Witojcie #{osoba} w zajebiaszczym projekcie o nr #{lekcja}"
    suma = 2 + 2
    tekst = "witom"
    return napis, suma, tekst   # i tu nam pięknie zwraca wartosci zamiast puts
  end
end

re = Return.new
puts re.test()
puts re.test("Adam")
puts re.test("Alan", "10")
puts re.test("Tomek", "10")
