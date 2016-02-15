
class Petle
 def swiec
   swiatło = "zolted"
   if swiatło == "czerwone"
     puts "Stop"
   elsif swiatło == "zielone"
     puts "Jedz"
   elsif swiatło == "zolte"
     puts "Czekaj"
   else
     puts "zepsute switala - uwazaj"
   end
 end
end

a = Petle.new
puts a.swiec


class Szkola
 def szkol
   ocena = 4
   case ocena
     when 1,2
       puts "kiepska ocena"
     when 3,4
       puts "srednia ocena"
     when 5,6
       puts "swietna ocena"
     else
       puts "ocena nieznana"
   end
 end

  def szokl2
    ocena = 6
    if ocena == 1 or ocena ==2
      puts "kiepska"
    elsif ocena == 3 or ocena == 4
      puts "srednia"
    elsif ocena == 5 or ocena == 6
      puts "bardzo dobra"
    else
      puts "ocena nie znana"
    end
  end



end

b = Szkola.new
puts b.szkol
puts b.szokl2

puts "Petla For"


class Petllle
  def cos
    puts "witaj ! \n" *5   #\n    - przjscie do nowej linni
  end

  def cos2
    x = 0
    -for x in (1..10)
       print "dupa "
    end
  end

  # tu w irb przeliteratuje wszytko
  def cos3
    for imie in ["ala", "ewa", "ola"]
      puts "Witaj #{imie.capitalize} w moim programie"
    end
  end


end

c = Petllle.new
puts c.cos

puts c.cos3


class Tabliczka_monzenia
 def cos
   x = 0
   y = 0

   for x in (1..10)
     for y in (1..10)
       z = x * y
       if z <= 9
         print "|  #{z} |"
       else
         print "| #{z} |"
       end
     end
     print x
   end
 end
end

ta = Tabliczka_monzenia.new
puts ta.cos


# PETLE WHILE ORAZ UNTIL
puts "PETEA WHILE ORAZ UNTIL"

class Petla_While_Until
  def test
    x = 0
    puts "ok- warunek spelniony" if x < 3
    x+=1
    puts "ok" if x < 3
  end

  # Zamiast tej petli mozemy zmienic na inna - czyli dopuki warunek nie jest spelniony
  puts "test_2"
  def test_2
    x = 0
    puts x
    puts x +=1 while x < 3
  end

  def test_3
    x = 0
    while x < 10
      x +=1
      puts "Witaj uczestniku nr: " +x.to_s
    end
  end

  def test_4
    x = 0
    until x >= 10
      x += 1
      puts "Witaj nowy uczestniku; " + x.to_s
    end
  end
end

cP = Petla_While_Until.new
puts cP.test
puts cP.test_2
puts cP.test_3
puts cP.test_4


puts " "
puts " PETLA LOOP DO   -  bardzo ciekawa betla, uzywamy w niej slowa BREAK"

class Petla_loop_do
  def test
    x = 0
    loop do
      break if x > 10 # INNYMI SLOWY PRZERWIJ AZ DOJDZIESZ DO 10 - JEZELI TEGO NIE DAMY - TO BEDZIE NISKĄCZON PETLA
      x += 1
      puts "Witaj nowy uczestniu petli loop"
    end
  end

  def test_2
    x = 0
    loop do
      break if x > 10
      x += 1
      next if x == 5    # W tym momęcie pomija nam element o numerze 5
      puts "Ala ma kota " + x.to_s
    end
  end
end

pl = Petla_loop_do.new
puts pl.test
puts pl.test_2


puts " "
puts "ITERATORY  - Pozwalają na sekwencyjny dostep do obiektu"
class Iteratory
  def test
    x = 0
    while x < 3
      puts "Nasz Iterator "
      x += 1
    end
  end
  def test_2
    4.times do
      puts "Mniej pracy"
    end
  end

  def test_3
    5.upto(7) {puts "Yes!"}   # Tu nam wyswietli od zadane wartosci czyli 5 do ządanej czyli do 7
  end

  def test_4     # z tej metody liczy nam od 2ch w górę czyli do 4   - ZAJEBISTE TO JEST
    2.upto(4) do |numeruj|
      puts "Kolejne liczby: " + numeruj.to_s
    end
  end

  def test_5
    imiona = ["ewa", "ola", "ala", "jan"]
    imiona.each do |osoba|
      puts osoba
    end
  end
end

it = Iteratory.new
puts it.test
puts it.test_2
puts it.test_3
puts it.test_4
puts it.test_5


puts " "
puts "BLOKI KODU"
class Bloki_kodu
  def test
    (1..5).each do |x|
       puts "aaa " + x.to_s
    end
  end

  def test_2
    ["ala", "ewa", "ola"].each {|imie| puts imie}
  end

  def test_3
    imiona = ["ala", "ewa", "ola"]
    imiona.each do |imie|
      puts "Witaj: #{imie.capitalize} w tescie Ruby !"
    end
  end
end

bl = Bloki_kodu.new
puts bl.test
puts bl.test_2
puts bl.test_3


puts " "
puts " BLOKI KODU - ITERATORY"
puts " "

class Bloki_kodu_metody
  def test    # Wyszukajmy elementy z pewnego zakresu danych
    p (1..10).detect {|szukana| szukana == 5}
  end
  def test_2
    p (1..10).detect {|szukana| szukana  > 5}
  end

  def test_3    # Wyszukajmy zadane elementy za pomocą metody find_all, spr. czy wszystkie liczby spelniają ten warunek
    p (1..10).find_all {|szukana| szukana >  5}
  end

  def test_4    # Wyszukajmy zadane elementy za pomocą metody any - czyli czy spelnia nasz wrunek
    p (1..10).find_all {|szukana| szukana > 3}
  end

  def test_5   # Spr. czy istnieje taka liczba wieszka od 3
    p (1..10).any? {|szukana| szukana > 3}
  end

  def test_6   # Spr. czy istnieje taka liczba wieszka od 30
    p (1..10).any? {|szukana| szukana > 30}
  end

  def test_7   # Tutaj usunmy z naszej tablicy wszytkiego elementy np. mniejsze niz 3
    puts oceny = [1, 2, 3, 4, 5, 6, 1, 2, 3, 1, 2]
    print oceny.delete_if{|ocena| ocena < 3}
  end

  def test_8   # Ta metoda wyciągnie mi wszystkie elementy które spelniają warunek
    puts oceny = [1, 2, 3, 4, 5, 6, 1, 2, 3, 1, 2]
    print oceny.select{|ocena| ocena > 3}
  end
end

bm = Bloki_kodu_metody.new
puts bm.test
puts " "
puts bm.test_2
puts " "
print bm.test_3
puts " "
puts bm.test_4
puts " "
puts bm.test_5
puts " "
puts bm.test_6
p " "
p bm.test_7
p " "
puts bm.test_8
p " "


# MERGE -
puts "MERGE - Łączenie elementów"
puts " "

class Merge
  def test
    puts ala = {"sliwki"=>1, "banany"=>2}
    puts ewa = {"jablka"=>3, "banany"=>4}
    p " "
    # TUTAJ PRZEKAZUJEMY WARTOSCI Z TABLIC, I TO JAKIEGO PARAMETRU UZYJEMY dostajemy z tablicy nowej bącz starej
    # klucz - nazwa spornego klucza
    # stara - stara wartosc z poprzedniej tablicy
    # nazwa = wartosc spornego klucza z tablicy 2
    puts ala.merge(ewa){|klucz, stara, nowa| nowa + stara }   # Tutaj Ruby złaczył nam elementy
  end

  def test_1
     ala = {"sliwki"=>1, "banany"=>2}
     ewa = {"jablka"=>3, "banany"=>4}
    p " "

    puts ala.merge(ewa){|klucz, stara, nowa| (nowa + stara) * 12 }   # Tutaj Ruby złaczył nam elementy i ponożył
  end
end

puts " "
m = Merge.new
puts m.test
p " "
p m.test_1


# Collect
puts "Collect - Kolekcje naszych elementów, ta metoda tworzy nowy element z zadanej kolekcji i przekazuje je do bloku kodu po przez parametr"
class Collect
  #  W tej metodzie z tej kolekcji elementów pobralismy je i pomnożyliśmy razy 2
  def test
    print (1..10).collect{ |liczba| liczba * 2}
  end

  # Stwórzmy klasyczny układ z ocenami ucznia
  # W tym przykładzie Ruby stowrzy nam ocene 7, gdzie takiej nie mamy
  def test_2
    oceny  = [1, 2, 3, 4, 5, 6]
    print oceny.collect{|ocena| ocena + 1 }
  end

  # Zróbmy to prawidłowo
  def test_3
    oceny  = [1, 2, 3, 4, 5, 6]
    print oceny.collect{|ocena| ocena + 1 if ocena < 6}
  end

 # imiona.upcase  -Ruby da nam błąd, ponieważ musimy pobrać elementy z tablicy
  def test_4
    imiona = ["ewa", "ala", "ola"]
    puts imiona.collect{|imie| imie.upcase}
  end


end

p " "
c = Collect.new
puts c.test
puts c.test_2
puts c.test_3
puts c.test_4


# COLLECT - TABLICE ASOCJACYJNE
puts "Collect - Tablice asocjacyjne"
class Collect_tablice_asocjacyjne
  def test
    ceny = {"monitor"=>100, "myszka komputerowa"=>20, "klawiatura"=>50}
    puts ceny
    puts ceny.collect {|klucz, wartosc| "towar: #{klucz},cena netto: #{wartosc}, cena brutto: #{wartosc * 1.23}"  }
  end
end

ca = Collect_tablice_asocjacyjne.new
puts ca.test


# SORT - SORTOWANIE
# Jezeli pierwsza wartość jest taka sama jak druga to Ruby da nam 0
# Jezeli pierwsza wartość jest mniejsza od drugiej to Ruby zawsze da nam -1
# Jeżeli pierwsza wartosć jest wieksza do drugiej to Ruby da nam 1

puts "SORT - czylis sortowanie tablic  "
puts "Operator <=> SPACESHIP"
class Sort
  def test
    puts 3 <=> 3 , " porównuje 3 do 3 i da nam 0, skoro 0 to te wartości są sobie równe"
    puts 1 <=> 2, "Jezeli porównam 1 do 2 to Ruby da nam -1"
    puts 1 <=> 3, "Jezeli porównam 1 do 3 to Ruby da nam również  -1"
    puts 3 <=> 1, "Jezeli porównam 3 do 1 to Ruby da nam 1"
  end

  def test_2   # Przy tej metodzie uzyty jest operator SPACESHIP
    oceny = [5, 2, 4, 1, 3]
    print oceny.sort
    p " "
    print oceny.sort.reverse
    p " "
    print oceny.sort{|pierwszy, drugi| pierwszy<=>drugi}
    p " "
    print oceny.sort{|pierwszy, drugi| drugi<=>drugi}
    p " "
    print oceny.sort{|pierwszy, drugi| pierwszy<=>pierwszy}
  end

  def test_3
    owoce = ["cytryna", "banan", "annanas"]
    print owoce.sort
  end

  def test_4  # Tutaj posortujmy po długości nazwy :)
    owoce = ["cytryna", "banan", "annanas"]
    print owoce.sort_by{|owoc| owoc.length }
  end

  def test_5  # Tutaj posortujmy po długości nazwy :)
    owoce = ["cytryna", "banan", "annanas"]
    print owoce.sort{|owoc_1, owoc_2| owoc_1.length <=> owoc_2.length }
  end

end

s = Sort.new
puts s.test
puts s.test_2
puts s.test_3
puts s.test_4
puts s.test_5


p " "
# Incjet - TA METODA PRZEKAZUJE DO BLOKU KAZDY ELEMENT Z KOLEKCJI (I WSTRZYKUJE JE DO PAMIECI)
puts "INCJET"

puts " Za pomocą tej metody mozemy w łatwy sposób dodawac, mnozyc przliczac kolejne elementy z tablicy "

class Incjet
  def test
    liczby = [1,2,3,4,5]
    print liczby
    puts "Tutaj Ruby zsumowała nam wszystkie liczby"
    print suma = liczby.inject { |pamiec, kolejny| pamiec + kolejny}
  end

  def test_2
    liczby = [1,2,3,4,5]
    print liczby
    puts "Zacznijmy od dużej wartości 100 - czyli Ruby doda nam wartość zapisaną w pamięci -czyli 100 te 15r"
    print suma = liczby.inject(100) { |pamiec, kolejny| pamiec + kolejny}
  end


  # Mozemy obliczyc silnie
  # Czyli 5! = 1*2*3*4*5
  def test_3
    puts (1..5).inject{ |pamiec, kolejny | pamiec *= kolejny  }
    puts (1..6).inject{ |pamiec, kolejny | pamiec *= kolejny  }
    puts (1..7).inject{ |pamiec, kolejny | pamiec *= kolejny  }
    puts (1..8).inject{ |pamiec, kolejny | pamiec *= kolejny  }
    puts (1..9).inject{ |pamiec, kolejny | pamiec *= kolejny  }
    puts (1..10).inject{ |pamiec, kolejny | pamiec *= kolejny  }
    p " "
    puts (1..10).inject{ |pamiec, kolejny | puts pamiec *= kolejny; pamiec  }   # CIEKAWOSTKA DOPISZYM PUTS
  end
end

inn = Incjet.new
puts inn.test
puts inn.test_2
puts inn.test_3