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



# Odczytywanie pliku
