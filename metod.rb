

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
# $osba - zmienna globalna
# @osoba - zmienna instacji
# @@osoba - zmienna klasowa

$napis = "Ala ma kota"

puts $napis