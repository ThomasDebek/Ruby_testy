# Praca z plikami

plik = File.new("test.txt","w")   # w- to zapisywanie do plku,  Tworzymy plik, -pojawaia nam sie
p plik.close


# Jezeli stworzymy nowy taki sam plik to stary jest nadpisywany-niszczony




# Zapisywanie do pliku

plik2 = File.new("test2.txt","w")

p plik2.puts "Ala ma kota"
p plik2.print "Ewa ma psa"
p plik2 << "Jan ma rybki"   #Dodaje nam ale nie do nowej linnii
p plik2.write "Ola ma kota"   # Ta metoda zwaraca nami informacjie ile mamy wpisanych znaków
p plik2.close


puts "Odczytywanie pliku"
# Odczytywanie pliku

plik3 = File.new("test3.txt","r") # r - tylko do odczytu

p plik3.gets.chomp  #chomp to usuniecie ostaniego elementu z linii
p plik3.read(2)

p plik3.close


# Użyjmy petli do odczytu pliku
File.open("test3.txt","r") do |plik|
  while wiersz=plik.gets
    puts wiersz.chomp
  end
end
puts " "

# WSKAŻNIK PLIKU  - mozemy powiedziec ze to nasz kursor
puts "Wskaźnik pliku"


p File.absolute_path(__FILE__)

# Otweramy nasze irb w terminalu
# plik = File.new("test3.txt", "r")
# plik.pos
# plik.read(6)
# plik.gets
# plik.pos=4
# plik.eof ?
# plik.rewind      czyli przewin
# plik.pos+=10
# plik.lineno      aktulana linja
# plik.close       musimy go zamknąć



puts " "
puts "PORUSZANIE SIE PO PLIKU"

#plik5 = File.new("test5.txt","r")   # zeby cos wpisac trzeba mu dac w-write

#while wiersz=gets
 # puts "wiersz #{plik5.lineno}: #{wiersz}"
#end
#plik5.close


puts ""
puts "PRACA Z PLIKAMI"

plik77 = File.new("czytaj.txt", "w")   # Tworzymy sobie nowy plik
plik77.puts"zmiana nazwy"              # Zmienmy nazwe tego pliku
p plik77.close                         # Zamykamy i spr. czy sie strorzyl

p File.rename("czytaj.txt", "czytaj_to.txt")   # Zmeinmy nazwe pliku na inną
 # spróbujmy go skasowac


p File.delete("czytaj_to.txt")    # Ruby pokaże nam 1 - czyli napewno został usunięty

p File.absolute_path(__FILE__)
puts "Aby móc kopiowac plik musimy uzyc modułu FileUtils"
p "musimy zaladowac modul"
p require 'FileUtils'   # Ładujemy modul
 p FileUtils.copy("test.txt","test_copy/test_02.txt")

puts ""
puts "Work"
